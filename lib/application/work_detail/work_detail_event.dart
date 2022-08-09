part of 'work_detail_bloc.dart';

@freezed
class WorkDetailEvent with _$WorkDetailEvent {
  const factory WorkDetailEvent.started(String initialStatus) = _Started;
  const factory WorkDetailEvent.update({required String id,required String status}) = _Update;
}