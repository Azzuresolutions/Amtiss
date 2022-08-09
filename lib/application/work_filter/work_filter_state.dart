part of 'work_filter_cubit.dart';

@freezed
class WorkFilterState with _$WorkFilterState {
  const factory WorkFilterState({
    required List<WorkFilter> activities,
    required List<WorkFilter> priorities,
    required List<WorkFilter> statuses,
  }) = _WorkFilterState;

  factory WorkFilterState.initial() => WorkFilterState(activities: [], priorities: [], statuses: [],);
}
