part of 'work_bloc.dart';

@freezed
class WorkEvent with _$WorkEvent {
  const factory WorkEvent.started() = _Started;
  const factory WorkEvent.get() = _Get;
  const factory WorkEvent.search(String query) = _Search;
  const factory WorkEvent.update({required String status,required String activity,required String priority}) = _Update;
}