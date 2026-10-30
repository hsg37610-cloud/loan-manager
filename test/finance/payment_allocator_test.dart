import 'package:flutter_test/flutter_test.dart';
import 'package:loan_manager/core/finance/payment_allocator.dart';

AllocatableInstallment inst(String id, String d, int amt, [int paid = 0]) =>
    AllocatableInstallment(id: id, dueDate: d, amount: amt, paidAmount: paid);

void main() {
  final list = [
    inst('b', '2024-05-20', 100),
    inst('a', '2024-04-19', 100),
    inst('c', '2024-06-20', 100),
  ];

  test('partial payment hits the oldest first', () {
    final r = PaymentAllocator.allocate(paymentAmount: 60, installments: list);
    expect(r.allocations.length, 1);
    expect(r.allocations[0].installmentId, 'a');
    expect(r.allocations[0].amountToApply, 60);
    expect(r.unallocatedAmount, 0);
  });

  test('payment spans installments in due-date order', () {
    final r = PaymentAllocator.allocate(paymentAmount: 250, installments: list);
    expect(r.allocations.map((e) => e.installmentId), ['a', 'b', 'c']);
    expect(r.allocations.map((e) => e.amountToApply), [100, 100, 50]);
    expect(r.unallocatedAmount, 0);
  });

  test('overpayment goes to unallocated', () {
    final r = PaymentAllocator.allocate(paymentAmount: 500, installments: list);
    expect(r.allocations.fold<int>(0, (s, e) => s + e.amountToApply), 300);
    expect(r.unallocatedAmount, 200);
  });

  test('respects existing paidAmount and skips fully paid', () {
    final r = PaymentAllocator.allocate(paymentAmount: 120, installments: [
      inst('a', '2024-04-19', 100, 100),
      inst('b', '2024-05-20', 100, 70),
      inst('c', '2024-06-20', 100),
    ]);
    expect(r.allocations.map((e) => e.installmentId), ['b', 'c']);
    expect(r.allocations.map((e) => e.amountToApply), [30, 90]);
    expect(r.unallocatedAmount, 0);
  });
}