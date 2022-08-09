import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/survey/i_survey_repository.dart';

part 'survey_detail_event.dart';
part 'survey_detail_state.dart';
part 'survey_detail_bloc.freezed.dart';

@injectable
class SurveyDetailBloc extends Bloc<SurveyDetailEvent, SurveyDetailState> {
  final ISurveyRepository _repository;
  SurveyDetailBloc(this._repository) : super(SurveyDetailState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        statusState: event.initialStatus,
      ));
    });
    on<_Update>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var result = await _repository.updateStatus(
        event.id,
        event.status,
      );
      result.fold(
        (l) => emit(state.copyWith(
          state: ResultState.error(
            l.maybeMap(
              error: (value) =>
                  value.msg ?? "Ups, An error occured, Please try again",
              orElse: () => "Ups, An error occured, Please try again",
            ),
          ),
        )),
        (r) => emit(state.copyWith(
            state: ResultState.success(r), statusState: event.status)),
      );
    });
  }
}
