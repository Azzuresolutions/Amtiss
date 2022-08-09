part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.started() = _Started;
  const factory SurveyEvent.get({String? surveyId, String? woId}) = _Get;
  const factory SurveyEvent.search(String query) = _Search;
  // const factory SurveyEvent.updateStatus({required String id,required String status}) = _UpdateStatus;

  const factory SurveyEvent.update(
      {required String id, required String status}) = _Update;
}
