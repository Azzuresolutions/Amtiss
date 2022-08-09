part of 'new_work_order_report_bloc.dart';

@freezed
class NewWorkOrderReportState with _$NewWorkOrderReportState {
  const factory NewWorkOrderReportState({
    required ResultState state,
    required List<ReportSurvey> reports,
    required List<ReportSurvey> addedReports,
    required ReportSurvey selectedReports,
  }) = _NewWorkOrderReportState;

  factory NewWorkOrderReportState.initial() => NewWorkOrderReportState(
      state: ResultState.initial(),
    reports: [],
    addedReports: [],
    selectedReports: ReportSurvey()
      );
}
