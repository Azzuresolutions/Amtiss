part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState({
    required ResultState state,
    required List<SurveyOrder> surveys,
  }) = _SurveyState;
  const factory SurveyState.empty(
    ResultState state,
    String statusState,
  ) = _ReportStateStatus;

  factory SurveyState.initial() =>
      SurveyState(state: ResultState.initial(), surveys: []);
}
