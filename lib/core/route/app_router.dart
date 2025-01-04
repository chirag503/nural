import 'package:auto_route/auto_route.dart';
import 'package:nural/features/dashboard/presentation/dashboard_screen.dart';
import 'package:nural/features/detailed_dashboard/presentation/detail_dashboard_screen.dart';
import 'package:nural/features/splash/presentation/splash_screen.dart';
part 'app_router.gr.dart';

// Common App routes
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: DetailDashboardRoute.page),
      ];
}
