// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../Page/Dashboard.page.dart' as _i2;
import '../Page/heroDes.page.dart' as _i3;
import '../Page/heroList.page.dart' as _i4;
import '../Page/main.page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    HeroDesRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HeroDesPage(),
      );
    },
    HeroListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HeroListPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MainRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
        ),
        _i5.RouteConfig(
          HeroDesRoute.name,
          path: '/hero-des-page',
        ),
        _i5.RouteConfig(
          HeroListRoute.name,
          path: '/hero-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.HeroDesPage]
class HeroDesRoute extends _i5.PageRouteInfo<void> {
  const HeroDesRoute()
      : super(
          HeroDesRoute.name,
          path: '/hero-des-page',
        );

  static const String name = 'HeroDesRoute';
}

/// generated route for
/// [_i4.HeroListPage]
class HeroListRoute extends _i5.PageRouteInfo<void> {
  const HeroListRoute()
      : super(
          HeroListRoute.name,
          path: '/hero-list-page',
        );

  static const String name = 'HeroListRoute';
}
