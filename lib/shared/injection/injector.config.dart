// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:code_id_alice/alice.dart' as _i9;
import 'package:code_id_network/code_id_network.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../application/auth/bloc/auth_bloc.dart' as _i11;
import '../../application/login/login_bloc.dart' as _i28;
import '../../application/new_work_order/new_work_order_detail_bloc.dart'
    as _i17;
import '../../application/new_work_order/new_work_order_report_bloc.dart'
    as _i18;
import '../../application/new_work_order/new_work_order_resources_bloc.dart'
    as _i19;
import '../../application/survery/photos_bloc.dart' as _i20;
import '../../application/survery/question_bloc.dart' as _i21;
import '../../application/survery/survey_bloc.dart' as _i22;
import '../../application/survey_detail/survey_detail_bloc.dart' as _i23;
import '../../application/work/work_bloc.dart' as _i24;
import '../../application/work_detail/work_detail_bloc.dart' as _i25;
import '../../application/work_filter/work_filter_cubit.dart' as _i8;
import '../../domain/auth/i_auth_repository.dart' as _i4;
import '../../domain/login/i_login_repository.dart' as _i26;
import '../../domain/survey/i_survey_repository.dart' as _i13;
import '../../domain/work/i_work_repository.dart' as _i15;
import '../../infrastructure/auth/auth_repository.dart' as _i5;
import '../../infrastructure/login/login_repository.dart' as _i27;
import '../../infrastructure/survey/survey_repository.dart' as _i14;
import '../../infrastructure/work/work_repository.dart' as _i16;
import '../amtiss_bloc_observer.dart' as _i10;
import '../app_router.dart' as _i3;
import 'module_injector.dart' as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.lazySingleton<_i3.AppRouters>(() => registerModules.appRouter);
  gh.lazySingleton<_i4.IAuthRepository>(() => _i5.AuthRepository());
  gh.lazySingleton<_i6.Logger>(() => registerModules.logger);
  await gh.lazySingletonAsync<_i7.SharedPreferences>(
      () => registerModules.sharedPreferences,
      preResolve: true);
  gh.factory<String>(() => registerModules.baseUrl, instanceName: 'baseUrl');
  gh.factory<String>(() => registerModules.apiKey, instanceName: 'apiKey');
  gh.factory<_i8.WorkFilterCubit>(() => _i8.WorkFilterCubit());
  gh.lazySingleton<_i9.Alice>(
      () => registerModules.alice(get<_i3.AppRouters>()));
  gh.factory<_i10.AmtissBlocObserver>(
      () => _i10.AmtissBlocObserver(get<_i6.Logger>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i4.IAuthRepository>()));
  await gh.lazySingletonAsync<_i12.INetworkService>(
      () => registerModules.network(get<String>(instanceName: 'baseUrl'),
          get<String>(instanceName: 'apiKey'), get<_i9.Alice>()),
      preResolve: true);
  gh.lazySingleton<_i13.ISurveyRepository>(
      () => _i14.SurveyRepository(get<_i12.INetworkService>()));
  gh.lazySingleton<_i15.IWorkRepository>(
      () => _i16.WorkRepository(get<_i12.INetworkService>()));
  gh.factory<_i17.NewWorkOrderDetailBloc>(
      () => _i17.NewWorkOrderDetailBloc(get<_i15.IWorkRepository>()));
  gh.factory<_i18.NewWorkOrderReportBloc>(
      () => _i18.NewWorkOrderReportBloc(get<_i15.IWorkRepository>()));
  gh.factory<_i19.NewWorkOrderResourcesBloc>(
      () => _i19.NewWorkOrderResourcesBloc(get<_i15.IWorkRepository>()));
  gh.factory<_i20.PhotoBloc>(
      () => _i20.PhotoBloc(get<_i13.ISurveyRepository>()));
  gh.factory<_i21.QuestionBloc>(
      () => _i21.QuestionBloc(get<_i13.ISurveyRepository>()));
  gh.factory<_i22.SurveyBloc>(
      () => _i22.SurveyBloc(get<_i13.ISurveyRepository>()));
  gh.factory<_i23.SurveyDetailBloc>(
      () => _i23.SurveyDetailBloc(get<_i13.ISurveyRepository>()));
  gh.factory<_i24.WorkBloc>(() => _i24.WorkBloc(get<_i15.IWorkRepository>()));
  gh.factory<_i25.WorkDetailBloc>(
      () => _i25.WorkDetailBloc(get<_i15.IWorkRepository>()));
  gh.lazySingleton<_i26.ILoginRepository>(
      () => _i27.LoginRepository(get<_i12.INetworkService>()));
  gh.factory<_i28.LoginBloc>(
      () => _i28.LoginBloc(get<_i26.ILoginRepository>()));
  return get;
}

class _$RegisterModules extends _i29.RegisterModules {}
