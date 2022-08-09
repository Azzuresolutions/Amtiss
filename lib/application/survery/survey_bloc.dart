import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/survey/i_survey_repository.dart';
import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'survey_event.dart';
part 'survey_state.dart';
part 'survey_bloc.freezed.dart';

@injectable
class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final ISurveyRepository _repository;
  SurveyBloc(this._repository) : super(SurveyState.initial()) {
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
        (r) => emit(SurveyState.empty(ResultState.success(r), event.status)),
      );
    });
    // on<_Update>((event, emit) async {
    //   List<SurveyOrder> filteredAct = state.surveys.where((e) {
    //     var fullText = e.toJson().toString();
    //     var r = 0;
    //     event.status.split(" ").forEach((element) {
    //       if (fullText.toLowerCase().contains(element.toLowerCase())) {
    //         r += 1;
    //       }
    //     });
    //     return r > 0;
    //   }).toList();
    //   List<SurveyOrder> filteredStat = filteredAct.where((e) {
    //     var fullText = e.toJson().toString();
    //     var r = 0;
    //     event.activity.split(" ").forEach((element) {
    //       if (fullText.toLowerCase().contains(element.toLowerCase())) {
    //         r += 1;
    //       }
    //     });
    //     return r > 0;
    //   }).toList();
    //   List<SurveyOrder> filteredPrio = filteredStat.where((e) {
    //     var fullText = e.toJson().toString();
    //     var r = 0;
    //     event.priority.split(" ").forEach((element) {
    //       if (fullText.toLowerCase().contains(element.toLowerCase())) {
    //         r += 1;
    //       }
    //     });
    //     return r > 0;
    //   }).toList();
    //   emit(state.copyWith(state: ResultState.success(state.surveys)));
    // });
    // on<_Search>((event, emit) async {
    //   var surveys = state.surveys
    //       .where((x) => x
    //           .toJson()
    //           .toString()
    //           .toLowerCase()
    //           .contains(event.query.toLowerCase()))
    //       .toList();
    //   emit(
    //     state.copyWith(
    //       state: ResultState.success(state.surveys),
    //     ),
    //   );
    // });
    on<_Get>(
      (event, emit) async {
        emit(state.copyWith(state: ResultState.loading()));
        var response = await _repository.getSurveys(event.surveyId, event.woId);
        print(response.length());
        response.fold(
          (l) => emit(
            state.copyWith(state: l),
          ),
          (r) {
            emit(state.copyWith(
              state: ResultState.success(r),
            ));
          },
        );
      },
    );
  }
}
