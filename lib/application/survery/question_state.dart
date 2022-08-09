part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    required ResultState state,
    required List<ReportDetailQuestion> reportDetailQuestion,
  }) = _QuestionState;

  factory QuestionState.initial() =>
      QuestionState(state: ResultState.initial(), reportDetailQuestion: []);
}
