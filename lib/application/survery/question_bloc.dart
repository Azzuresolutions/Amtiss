import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/survey/i_survey_repository.dart';
import 'package:amtiss/domain/survey/models/report_detail.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'question_state.dart';
part 'question_event.dart';
part 'question_bloc.freezed.dart';

@injectable
class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final ISurveyRepository _repository;
  QuestionBloc(this._repository) : super(QuestionState.initial()) {
    on<_Question>(
      (event, emit) async {
        emit(state.copyWith(state: ResultState.loading()));
        var response = await _repository.getQuestion(event.id);
        response.fold(
          (l) => emit(
            state.copyWith(state: l),
          ),
          (r) {
            emit(state.copyWith(
                reportDetailQuestion: r, state: ResultState.success(r)));
          },
        );
      },
    );
  }
}
