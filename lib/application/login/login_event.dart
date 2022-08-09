part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.onCompanyOrIpChanged(String value) =
      _CompanyOrIpChanged;
  const factory LoginEvent.onUsernameChanged(String value) = _UsernameChanged;
  const factory LoginEvent.onPasswordChanged(String value) = _PasswordChanged;
  const factory LoginEvent.onIsUsingIpSwitched(bool value) = _IsUsingIpSwitched;
  const factory LoginEvent.onPasswordVisibilitySwitched(bool value) =
      _PasswordVisibilitySwitched;
  const factory LoginEvent.submit() = _Submit;
}
