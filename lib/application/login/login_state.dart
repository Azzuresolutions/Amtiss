part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isPasswordVisible,
    required bool isUsingCompany,
    required String companyOrIp,
    required String username,
    required String password,
    required ResultState state,
  }) = _LoginState;
  factory LoginState.initial() => LoginState(
        isPasswordVisible: false,
        isUsingCompany: true,
        companyOrIp: "v4",
        username: "",
        password: "",
        state: ResultState.initial(),
      );
}
