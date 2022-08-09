part of 'work_bloc.dart';

@freezed
class WorkState with _$WorkState {
  const factory WorkState({
    required ResultState state,
    required List<WorkOrder> works,
  }) = _WorkState;
  factory WorkState.initial() => WorkState(state: ResultState.initial(), works: []);
}
