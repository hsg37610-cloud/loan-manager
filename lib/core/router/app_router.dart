import 'package:go_router/go_router.dart';
import 'package:loan_manager/features/ledger/presentation/loan_detail_screen.dart';
import 'package:loan_manager/features/ledger/presentation/loan_list_screen.dart';
import 'package:loan_manager/features/ledger/presentation/add_loan_screen.dart';

abstract final class AppRoutes {
  static const String home = 'home';
  static const String loanDetail = 'loanDetail';
  static const String addLoan = 'addLoan';
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home,
      builder: (context, state) => const LoanListScreen(),
      routes: [
        GoRoute(path: 'add-loan', name: AppRoutes.addLoan, builder: (context, state) => const AddLoanScreen()),
        GoRoute(path: 'loan/:id', name: AppRoutes.loanDetail, builder: (context, state) => LoanDetailScreen(loanId: state.pathParameters['id']!)),
      ],
    ),
  ],
);
