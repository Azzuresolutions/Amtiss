import 'package:amtiss/shared/app_router.dart';
import 'package:code_id_alice/alice.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModules {
  @Named('baseUrl')
  String get baseUrl => 'amtiss.com/api';
  @Named('apiKey')
  String get apiKey => '308f03f9c0244a7bfc561b960cb7059e';
  @lazySingleton
  AppRouters get appRouter => AppRouters();

  @lazySingleton
  Alice alice(AppRouters appRouters) =>
      Alice(navigatorKey: appRouters.navigatorKey, showNotification: false);

  @lazySingleton
  Logger get logger => Logger(
        filter: null,
        printer: PrettyPrinter(
          stackTraceBeginIndex: 1,
          methodCount: 2,
          printTime: true,
        ),
        output: null, //
      );

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @preResolve
  @lazySingleton
  Future<INetworkService> network(
    @Named('baseUrl') String baseUrl,
    @Named('apiKey') String apiKey,
    Alice alice,
  ) async {
    final _client = NetworkService(
      baseUrl: "https://",
      connectTimeout: 20000,
      sendTimeout: 20000,
      receiveTimeout: 20000,
    );

    _client.addInterceptors([
      LoggerInterceptor(
          requestBody: true,
          request: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true),
      alice.getDioInterceptor(),
    ]);

    return _client;
  }
}
