import 'dart:math' as math;

class AllocatableInstallment {
  final String id;
  final String dueDate; // ISO YYYY-MM-DD (sorts lexicographically)
  final int amount;
  final int paidAmount;
  const AllocatableInstallment({
    required this.id,
    required this.dueDate,
    required this.amount,
    required this.paidAmount,
  });
  int get remaining => math.max(0, amount - paidAmount);
}

class Allocation {
  final String installmentId;
  final int amountToApply;
  const Allocation(this.installmentId, this.amountToApply);
}

class AllocationResult {
  final List<Allocation> allocations;
  final int unallocatedAmount;
  const AllocationResult(this.allocations, this.unallocatedAmount);
}

class PaymentAllocator {
  PaymentAllocator._();

  static AllocationResult allocate({
    required int paymentAmount,
    required List<AllocatableInstallment> installments,
  }) {
    if (paymentAmount < 0) throw ArgumentError('Payment must be >= 0');

    final indexed = List.generate(installments.length, (i) => (i, installments[i]));
    indexed.sort((a, b) {
      final c = a.$2.dueDate.compareTo(b.$2.dueDate);
      return c != 0 ? c : a.$1.compareTo(b.$1); // stable
    });

    var left = paymentAmount;
    final out = <Allocation>[];
    for (final (_, inst) in indexed) {
      if (left == 0) break;
      final rem = inst.remaining;
      if (rem == 0) continue;
      final apply = math.min(left, rem);
      out.add(Allocation(inst.id, apply));
      left -= apply;
    }
    return AllocationResult(out, left);
  }
}