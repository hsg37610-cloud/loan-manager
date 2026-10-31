import 'package:go_router/go_router.dart';
import 'package:loan_manager/features/dashboard/presentation/dashboard_screen.dart';
import 'package:loan_manager/features/settings/presentation/settings_screen.dart';
import 'package:loan_manager/features/ledger/presentation/loan_list_screen.dart';
import 'package:loan_manager/features/ledger/presentation/loan_detail_screen.dart';
import 'package:loan_manager/features/ledger/presentation/add_loan_screen.dart';
import 'package:loan_manager/features/calculator/presentation/calculator_screen.dart';
import 'package:loan_manager/features/monthly/presentation/monthly_view_screen.dart';
import 'package:loan_manager/features/about/presentation/about_screen.dart';
import 'package:loan_manager/shared/widgets/main_scaffold.dart';

abstract final class AppRoutes {
  static const String home = 'home';
  static const String loanDetail = 'loanDetail';
  static const String addLoan = 'addLoan';
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScaffold(location: state.uri.toString(), child: child),
      routes: [
        GoRoute(path: '/', name: AppRoutes.home, builder: (context, state) => const DashboardScreen()),
        GoRoute(path: '/loans', builder: (context, state) => const LoanListScreen()),
        GoRoute(path: '/calculator', builder: (context, state) => const CalculatorScreen()),
        GoRoute(path: '/installments', builder: (context, state) => const MonthlyViewScreen()),
        GoRoute(path: '/settings', builder: (context, state) => const SettingsScreen()),
        GoRoute(path: '/about', builder: (context, state) => const AboutScreen()),
      ],
    ),
    GoRoute(path: '/add-loan', name: AppRoutes.addLoan, builder: (context, state) => const AddLoanScreen()),
    GoRoute(path: '/edit-loan/:id', builder: (context, state) => AddLoanScreen(loanId: state.pathParameters['id']!)),
    GoRoute(path: '/loan/:id', name: AppRoutes.loanDetail, builder: (context, state) => LoanDetailScreen(loanId: state.pathParameters['id']!)),
  ],
);
