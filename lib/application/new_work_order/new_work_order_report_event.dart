part of 'new_work_order_report_bloc.dart';

@freezed
class NewWorkOrderReportEvent with _$NewWorkOrderReportEvent {
  const factory NewWorkOrderReportEvent.started(String initialStatus) = _Started;
  const factory NewWorkOrderReportEvent.getReports() = _GetReports;
  const factory NewWorkOrderReportEvent.onReportSelect(ReportSurvey reportSurvey) = _ReportSelect;
  const factory NewWorkOrderReportEvent.onReportAdd(ReportSurvey reportSurvey) = _ReportAdd;
  const factory NewWorkOrderReportEvent.onReportRemove(ReportSurvey reportSurvey) = _ReportRemove;
  const factory NewWorkOrderReportEvent.onReportsSubmit(String assignmentId) = _ReportsSubmit;
  const factory NewWorkOrderReportEvent.onClearReportForm() = _ClearReportForm;
}