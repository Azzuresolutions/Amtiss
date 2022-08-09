import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/login/i_login_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository _loginRepository;
  LoginBloc(this._loginRepository) : super(LoginState.initial()) {
    on<_UsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.value));
    });
    on<_PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.value));
    });
    on<_CompanyOrIpChanged>((event, emit) {
      emit(state.copyWith(companyOrIp: event.value));
    });
    on<_IsUsingIpSwitched>((event, emit) {
      emit(state.copyWith(isUsingCompany: event.value));
    });
    on<_PasswordVisibilitySwitched>((event, emit) {
      emit(state.copyWith(isPasswordVisible: event.value));
    });
    on<_Submit>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _loginRepository.login(
          username: state.username,
          companyOrIp: state.companyOrIp,
          password: state.password);
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(state: ResultState.success(r)));
          emit(state.copyWith(state: ResultState.initial()));
        },
      );
      return emit(state.copyWith(state: ResultState.initial()));
    });
  }
}
