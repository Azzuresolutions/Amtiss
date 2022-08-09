import 'package:amtiss/shared/app_router.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'application/auth/bloc/auth_bloc.dart';
import 'shared/app_color.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return EasyLocalization(
      path: "assets/strings",
      supportedLocales: [
        Locale('en', "EN"),
        Locale('id', "ID"),
      ],
      fallbackLocale: Locale("en", "EN"),
      startLocale: Locale("en", "EN"),
      saveLocale: true,
      useOnlyLangCode: true,
      child: Builder(builder: (context) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
              initial: () => null,
              authenticated: () => getIt<AppRouters>().replace(HomeRoute()),
              unauthenticated: (withErrorMsg) =>
                  getIt<AppRouters>().replace(LoginRoute()),
            );
          },
          child: MaterialApp.router(
            debugShowCheckedModeBanner: true,
            theme: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    AppColors.primary,
                  ), //button color
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ), //text (and icon)
                ),
              ),
              colorScheme: Theme.of(context)
                  .colorScheme
                  .copyWith(secondary: AppColors.primary),
              buttonTheme: ButtonThemeData(
                buttonColor: AppColors.primary,
              ),
              primaryColor: AppColors.primary,
              textTheme: GoogleFonts.openSansTextTheme(
                Theme.of(context)
                    .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
              ),
            ),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            routeInformationParser: getIt<AppRouters>().defaultRouteParser(),
            routerDelegate: getIt<AppRouters>().delegate(),
            locale: context.locale,
          ),
        );
      }),
    );
  }
}
