// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouters extends RootStackRouter {
  _$AppRouters([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: LoginPage(key: args.key));
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    WorkDetailRoute.name: (routeData) {
      final args = routeData.argsAs<WorkDetailRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WorkDetailPage(key: args.key, work: args.work));
    },
    NewWorkOrderRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NewWorkOrderPage());
    },
    SurveyDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SurveyDetailRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SurveyDetailPage(
              key: args.key, work: args.work, surveyOrder: args.surveyOrder));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login'),
        RouteConfig(HomeRoute.name, path: '/landing'),
        RouteConfig(WorkDetailRoute.name, path: '/work_detail'),
        RouteConfig(NewWorkOrderRoute.name, path: '/work_order'),
        RouteConfig(SurveyDetailRoute.name, path: '/survey_detail')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key})
      : super(LoginRoute.name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/landing');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [WorkDetailPage]
class WorkDetailRoute extends PageRouteInfo<WorkDetailRouteArgs> {
  WorkDetailRoute({Key? key, required WorkOrder work})
      : super(WorkDetailRoute.name,
            path: '/work_detail',
            args: WorkDetailRouteArgs(key: key, work: work));

  static const String name = 'WorkDetailRoute';
}

class WorkDetailRouteArgs {
  const WorkDetailRouteArgs({this.key, required this.work});

  final Key? key;

  final WorkOrder work;

  @override
  String toString() {
    return 'WorkDetailRouteArgs{key: $key, work: $work}';
  }
}

/// generated route for
/// [NewWorkOrderPage]
class NewWorkOrderRoute extends PageRouteInfo<void> {
  const NewWorkOrderRoute()
      : super(NewWorkOrderRoute.name, path: '/work_order');

  static const String name = 'NewWorkOrderRoute';
}

/// generated route for
/// [SurveyDetailPage]
class SurveyDetailRoute extends PageRouteInfo<SurveyDetailRouteArgs> {
  SurveyDetailRoute(
      {Key? key, required WorkOrder work, required SurveyOrder surveyOrder})
      : super(SurveyDetailRoute.name,
            path: '/survey_detail',
            args: SurveyDetailRouteArgs(
                key: key, work: work, surveyOrder: surveyOrder));

  static const String name = 'SurveyDetailRoute';
}

class SurveyDetailRouteArgs {
  const SurveyDetailRouteArgs(
      {this.key, required this.work, required this.surveyOrder});

  final Key? key;

  final WorkOrder work;

  final SurveyOrder surveyOrder;

  @override
  String toString() {
    return 'SurveyDetailRouteArgs{key: $key, work: $work, surveyOrder: $surveyOrder}';
  }
}
