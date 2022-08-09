part of 'survey_detail_bloc.dart';

@freezed
class SurveyDetailEvent with _$SurveyDetailEvent {
  const factory SurveyDetailEvent.started(String initialStatus) = _Started;
  const factory SurveyDetailEvent.update({required String id,required String status}) = _Update;
}