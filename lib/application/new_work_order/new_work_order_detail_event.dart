part of 'new_work_order_detail_bloc.dart';

@freezed
class NewWorkOrderDetailEvent with _$NewWorkOrderDetailEvent {
  const factory NewWorkOrderDetailEvent.started(String initialStatus) = _Started;
  const factory NewWorkOrderDetailEvent.getCategory() = _GetCategory;
  const factory NewWorkOrderDetailEvent.getLocation() = _GetLocation;
  const factory NewWorkOrderDetailEvent.getAssets() = _GetAssets;
  const factory NewWorkOrderDetailEvent.getAssignTo() = _GetAssignTo;
  const factory NewWorkOrderDetailEvent.getJobPriority(List<JobField> jobPriorities) = _GetJobPriority;
  const factory NewWorkOrderDetailEvent.getAssignmentTeamOrUser(List<JobField> assignmentTeamOrUser) = _GetAssignmentTeamOrUser;
  const factory NewWorkOrderDetailEvent.getJobActivities() = _GetJobActivities;
  const factory NewWorkOrderDetailEvent.getJobType(List<JobField> jobTypes) = _GetJobType;
  const factory NewWorkOrderDetailEvent.onCategorySelect(AssetItem value) = _CategorySelect;
  const factory NewWorkOrderDetailEvent.onJobActivitySelect(AssetItem value) = _JobActivitySelect;
  const factory NewWorkOrderDetailEvent.onLocationSelect(AssetItem value) = _LocationSelect;
  const factory NewWorkOrderDetailEvent.onAssetSelect(AssetItem value) = _AssetSelect;
  const factory NewWorkOrderDetailEvent.onAssignToSelect(AssetItem value) = _AssignToSelect;
  const factory NewWorkOrderDetailEvent.onJobTypeSelect(String value) = _JobTypeSelect;
  const factory NewWorkOrderDetailEvent.onJobPrioritySelect(String value) = _JobPrioritySelect;
  const factory NewWorkOrderDetailEvent.onOpenDateSelect(String value) = _OpenDateSelect;
  const factory NewWorkOrderDetailEvent.onDueDateSelect(String value) = _DueDateSelect;
  const factory NewWorkOrderDetailEvent.onTeamOrUserSelect(String value) = _AssignmentTeamOrUserSelect;
  const factory NewWorkOrderDetailEvent.onDescriptionChanged(String value) = _DiscriptionChanged;
  const factory NewWorkOrderDetailEvent.onGroupAssignmentAdd() = _GroupAssignmentAdd;
  const factory NewWorkOrderDetailEvent.onClearForm() = _ClearForm;
}