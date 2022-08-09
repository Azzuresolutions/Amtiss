import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:amtiss/presentation/create_new_work_order/new_work_order_page.dart';
import 'package:amtiss/presentation/login/login_page.dart';
import 'package:amtiss/presentation/splash_screen/splash_page.dart';
import 'package:amtiss/presentation/work_detail/survey_photo_slide.dart';
import 'package:amtiss/presentation/work_detail/work_detail_page.dart';
import 'package:amtiss/shared/routes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../domain/work/models/work_result.dart';
import '../presentation/home/home_page.dart';
import '../presentation/work_detail/survey_detail_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: Routes.main,
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      path: Routes.login,
      page: LoginPage,
    ),
    AutoRoute(
      path: Routes.landing,
      page: HomePage,
    ),
    AutoRoute(
      path: Routes.workDetail,
      page: WorkDetailPage,
    ),
    AutoRoute(
      path: Routes.newWorkOrder,
      page: NewWorkOrderPage,
    ),
    AutoRoute(
      path: Routes.surveyDetail,
      page: SurveyDetailPage,
    ),
  ],
)
class AppRouters extends _$AppRouters {}
