import 'dart:convert';

import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/work/i_work_repository.dart';
import 'package:amtiss/domain/work/models/report_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
part 'new_work_order_report_bloc.freezed.dart';

part 'new_work_order_report_event.dart';

part 'new_work_order_report_state.dart';

@injectable
class NewWorkOrderReportBloc
    extends Bloc<NewWorkOrderReportEvent, NewWorkOrderReportState> {
  final IWorkRepository _repository;

  NewWorkOrderReportBloc(this._repository)
      : super(NewWorkOrderReportState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith());
    });

    on<_GetReports>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getReports();

      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            reports: r.reports!,
          ));
        },
      );
    });

    on<_ReportSelect>((event, emit) async {
      emit(state.copyWith(selectedReports: event.reportSurvey));
    });

    on<_ReportAdd>((event, emit) async {
      var tempList = state.addedReports;
      tempList.add(event.reportSurvey);
      emit(state.copyWith(
          addedReports: tempList, selectedReports: ReportSurvey()));
    });

    on<_ReportRemove>((event, emit) async {
      var tempList = state.addedReports;
      tempList.removeWhere((element) => element.id == event.reportSurvey.id);
      emit(state.copyWith(
          addedReports: tempList, selectedReports: ReportSurvey()));
    });

    on<_ReportsSubmit>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      List<String> reportList = [];
      for (var report in state.addedReports) {
        reportList.add(json.encode({
          'assignment_id': int.parse(event.assignmentId),
          'report_id': report.id,
          'create_date': DateFormat("yyyy-MM-dd hh:mm:ss")
              .format(DateTime.now())
        }));
      }
      var response = await _repository.reportsAdd(reportList: reportList);
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
              state: ResultState.success(r),
              addedReports: [],
              selectedReports: ReportSurvey()));
        },
      );
    });

    on<_ClearReportForm>((event, emit) {
      emit(state.copyWith(
          state: ResultState.initial(),
          addedReports: [],
          selectedReports: ReportSurvey()));
    });
  }
}
