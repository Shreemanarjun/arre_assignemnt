import 'package:auto_route/auto_route.dart';
import 'package:arre_assignmemnt/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
        page: DashBoardRoute.page,
        path: '/dashboard',
        initial: true,
        children: [
          AutoRoute(page: HomeRoute.page, path: "home"),
          AutoRoute(page: SearchRoute.page, path: "search"),
          AutoRoute(page: AddNewMicRoute.page, path: "addNewMic"),
          AutoRoute(page: GroupsRoute.page, path: "group"),
          AutoRoute(page: ProfileRoute.page, path: "profile"),
        ]),
  ];
}
