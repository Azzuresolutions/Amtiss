part of 'work_detail_bloc.dart';

@freezed
class WorkDetailState with _$WorkDetailState {
  const factory WorkDetailState({
    required ResultState state,
    required String statusState,
  }) = _WorkDetailState;

  factory WorkDetailState.initial() =>
      WorkDetailState(state: ResultState.initial(), statusState: "");
}
