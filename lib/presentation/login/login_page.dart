import 'package:amtiss/generated/locale_keys.g.dart';
import 'package:amtiss/shared/app_color.dart';
import 'package:amtiss/shared/assets.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../../application/login/login_bloc.dart';
import '../../components/components.dart';

class LoginPage extends StatelessWidget with AutoRouteWrapper {
  LoginPage({Key? key}) : super(key: key);
  String user = "";
  String pass = "";
  setData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setString("user", user);
    _pref.setString("pass", pass);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.state.maybeWhen(
            orElse: () {},
            success: (v) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Login Success!",
                  ),
                ),
              );
              setData();
              context.read<AuthBloc>().add(AuthEvent.loggedIn(v));
            },
            error: (v) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    v ?? "an error occured",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            });
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .115,
                    vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        AppAssets.appLogo,
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Visibility(
                    //   visible: false,
                    //   child: H4Atm(
                    //     "[DEBUG MODE]",
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold, color: Colors.red),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    H4Atm(LocaleKeys.please_login_to_continue.tr()),
                    SizedBox(
                      height: 40,
                    ),
                    PrimaryTextField(
                      labelText: state.isUsingCompany
                          ? LocaleKeys.company_field.tr()
                          : LocaleKeys.ip_field.tr(),
                      onChanged: (v) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.onCompanyOrIpChanged(v)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PrimaryTextField(
                      labelText: LocaleKeys.username_field.tr(),
                      onChanged: (v) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.onUsernameChanged(v));
                        user = v;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PrimaryTextField(
                      obscureText: !state.isPasswordVisible,
                      labelText: LocaleKeys.password_field.tr(),
                      withTogglePasswordIcon: true,
                      onPasswordIconPresssed: () => context
                          .read<LoginBloc>()
                          .add(LoginEvent.onPasswordVisibilitySwitched(
                              !state.isPasswordVisible)),
                      onChanged: (v) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.onPasswordChanged(v));
                        pass = v;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CheckboxListTile(
                      title: H3Atm(LocaleKeys.login_with_ip.tr()),
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: !state.isUsingCompany,
                      // checkColor: AppColors.primary,
                      activeColor: AppColors.primary,
                      onChanged: (v) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.onIsUsingIpSwitched(!(v ?? false))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 45,
                      width: double.maxFinite,
                      child: Builder(builder: (context) {
                        return state.state.maybeWhen(
                          orElse: () => _buildLoginContent(context, state),
                          error: (v) => _buildLoginContent(context, state),
                          loading: () => Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.primary),
                            ),
                          ),
                        );
                        // return _buildLoginContent(context, state);
                      }),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoginContent(BuildContext context, LoginState state) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
      onPressed: () {
        context.read<LoginBloc>().add(
              LoginEvent.submit(),
            );
      },
      child: Builder(builder: (context) {
        return H2Atm(
          "Login",
          style: TextStyle(color: Colors.white),
        );
      }),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: this,
    );
  }
}
