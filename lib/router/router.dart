// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:task/Page/Dashboard.page.dart';
import 'package:task/Page/heroDes.page.dart';
import 'package:task/Page/heroList.page.dart';
import 'package:task/Page/main.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage, initial: true),
    AutoRoute(page: DashboardPage),
    AutoRoute(page: HeroDesPage),
    AutoRoute(page: HeroListPage),
  ],
)
class $AppRouter {}
