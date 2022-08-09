import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/work/i_work_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'work_detail_event.dart';
part 'work_detail_state.dart';
part 'work_detail_bloc.freezed.dart';

@injectable
class WorkDetailBloc extends Bloc<WorkDetailEvent, WorkDetailState> {
  final IWorkRepository _repository;
  WorkDetailBloc(this._repository) : super(WorkDetailState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        statusState: event.initialStatus,
      ));
    });
    on<_Update>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var result = await _repository.updateStatus(
        event.id,
        event.status,
      );
      result.fold(
        (l) => emit(state.copyWith(
          state: ResultState.error(
            l.maybeMap(
              error: (value) =>
                  value.msg ?? "Ups, An error occured, Please try again",
              orElse: () => "Ups, An error occured, Please try again",
            ),
          ),
        )),
        (r) => emit(state.copyWith(
            state: ResultState.success(r), statusState: event.status)),
      );
    });
  }
}
