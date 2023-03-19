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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:ccd2023/features/app/app.dart' as _i8;
import 'package:ccd2023/features/auth/auth.dart' as _i3;
import 'package:ccd2023/features/buy_tickets/pages/buy_ticket_page.dart' as _i4;
import 'package:ccd2023/features/coc/pages/coc_page.dart' as _i7;
import 'package:ccd2023/features/faq/pages/faq_page.dart' as _i6;
import 'package:ccd2023/features/home/home.dart' as _i1;
import 'package:ccd2023/features/profile/pages/profile_page.dart' as _i5;
import 'package:ccd2023/features/speaker/presentation/pages/cfs_page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CFSRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.CFSPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpPage(),
      );
    },
    ActivateEmailRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateEmailRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ActivateEmailPage(
          key: args.key,
          title: args.title,
          message: args.message,
        ),
      );
    },
    ForgotPassRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPassPage(),
      );
    },
    BuyTicketRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.BuyTicketPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    FAQRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.FAQPage(),
      );
    },
    CoCRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CoCPage(),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.UnknownPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i9.RouteConfig(
          CFSRoute.name,
          path: '/cfs',
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i9.RouteConfig(
          SignUpRoute.name,
          path: '/signup',
        ),
        _i9.RouteConfig(
          ActivateEmailRoute.name,
          path: '/activate-account',
        ),
        _i9.RouteConfig(
          ForgotPassRoute.name,
          path: '/forgot-pass',
        ),
        _i9.RouteConfig(
          BuyTicketRoute.name,
          path: '/buy-tickets',
        ),
        _i9.RouteConfig(
          ProfileRoute.name,
          path: '/profile',
        ),
        _i9.RouteConfig(
          FAQRoute.name,
          path: '/faq',
        ),
        _i9.RouteConfig(
          CoCRoute.name,
          path: '/coc',
        ),
        _i9.RouteConfig(
          UnknownRoute.name,
          path: '*',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CFSPage]
class CFSRoute extends _i9.PageRouteInfo<void> {
  const CFSRoute()
      : super(
          CFSRoute.name,
          path: '/cfs',
        );

  static const String name = 'CFSRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/signup',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.ActivateEmailPage]
class ActivateEmailRoute extends _i9.PageRouteInfo<ActivateEmailRouteArgs> {
  ActivateEmailRoute({
    _i10.Key? key,
    required String title,
    required String message,
  }) : super(
          ActivateEmailRoute.name,
          path: '/activate-account',
          args: ActivateEmailRouteArgs(
            key: key,
            title: title,
            message: message,
          ),
        );

  static const String name = 'ActivateEmailRoute';
}

class ActivateEmailRouteArgs {
  const ActivateEmailRouteArgs({
    this.key,
    required this.title,
    required this.message,
  });

  final _i10.Key? key;

  final String title;

  final String message;

  @override
  String toString() {
    return 'ActivateEmailRouteArgs{key: $key, title: $title, message: $message}';
  }
}

/// generated route for
/// [_i3.ForgotPassPage]
class ForgotPassRoute extends _i9.PageRouteInfo<void> {
  const ForgotPassRoute()
      : super(
          ForgotPassRoute.name,
          path: '/forgot-pass',
        );

  static const String name = 'ForgotPassRoute';
}

/// generated route for
/// [_i4.BuyTicketPage]
class BuyTicketRoute extends _i9.PageRouteInfo<void> {
  const BuyTicketRoute()
      : super(
          BuyTicketRoute.name,
          path: '/buy-tickets',
        );

  static const String name = 'BuyTicketRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.FAQPage]
class FAQRoute extends _i9.PageRouteInfo<void> {
  const FAQRoute()
      : super(
          FAQRoute.name,
          path: '/faq',
        );

  static const String name = 'FAQRoute';
}

/// generated route for
/// [_i7.CoCPage]
class CoCRoute extends _i9.PageRouteInfo<void> {
  const CoCRoute()
      : super(
          CoCRoute.name,
          path: '/coc',
        );

  static const String name = 'CoCRoute';
}

/// generated route for
/// [_i8.UnknownPage]
class UnknownRoute extends _i9.PageRouteInfo<void> {
  const UnknownRoute()
      : super(
          UnknownRoute.name,
          path: '*',
        );

  static const String name = 'UnknownRoute';
}
