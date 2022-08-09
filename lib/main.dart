import 'package:amtiss/app.dart';
import 'package:amtiss/application/new_work_order/new_work_order_detail_bloc.dart';
import 'package:amtiss/application/new_work_order/new_work_order_resources_bloc.dart';
import 'package:amtiss/application/survery/question_bloc.dart';
import 'package:amtiss/presentation/work_detail/work_detail_page.dart';
import 'package:amtiss/shared/amtiss_bloc_observer.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'application/auth/bloc/auth_bloc.dart';
import 'application/new_work_order/new_work_order_report_bloc.dart';
import 'application/survery/photos_bloc.dart';
import 'application/survery/survey_bloc.dart';
import 'application/survey_detail/survey_detail_bloc.dart';
import 'application/work_detail/work_detail_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await EasyLocalization.ensureInitialized();
  await Storage.init();
  BlocOverrides.runZoned(
    () => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<QuestionBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<PhotoBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SurveyBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SurveyDetailBloc>(),
          ),
          BlocProvider(create: (context) => getIt<WorkDetailBloc>()),
          BlocProvider(create: (context) => getIt<NewWorkOrderDetailBloc>()),
          BlocProvider(create: (context) => getIt<NewWorkOrderReportBloc>()),
          BlocProvider(create: (context) => getIt<NewWorkOrderResourcesBloc>()),


        ],
        child: BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(AuthEvent.started()),
          child: AppWidget(),
        ),
      ),
    ),
    blocObserver: getIt<AmtissBlocObserver>(),
  );
}
