part of 'survey_detail_bloc.dart';

@freezed
class SurveyDetailState with _$SurveyDetailState {
  const factory SurveyDetailState({
    required ResultState state,
    required String statusState,
  }) = _ReportDetailState;
  factory SurveyDetailState.initial() =>
      SurveyDetailState(state: ResultState.initial(), statusState: "");
}
