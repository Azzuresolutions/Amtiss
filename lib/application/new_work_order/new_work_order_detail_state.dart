part of 'new_work_order_detail_bloc.dart';

@freezed
class NewWorkOrderDetailState with _$NewWorkOrderDetailState {
  const factory NewWorkOrderDetailState({
    required ResultState state,
    required List<AssetItem> category,
    required List<AssetItem> locations,
    required List<AssetItem> assets,
    required List<AssetItem> jobActivities,
    required List<AssetItem> assignTo,
    required List<JobField> jobTypes,
    required List<JobField> assignmentTeamOrUser,
    required List<JobField> jobPriority,
    required String selectedJobType,
    required String selectedJobPriority,
    required String selectedOpenDate,
    required String selectedDueDate,
    required String selectedAssignmentTeamOrUser,
    required String description,
    required AssetItem selectedCategory,
    required AssetItem selectedLocation,
    required AssetItem selectedAsset,
    required AssetItem selectedJobActivity,
    required AssetItem selectedAssignTo,
    required String uploadedAssignmentId,
  }) = _NewWorkOrderDetailState;

  factory NewWorkOrderDetailState.initial() => NewWorkOrderDetailState(
      state: ResultState.initial(),
      category: [],
      locations: [],
      assets: [],
      selectedCategory: AssetItem(),
      selectedLocation: AssetItem(),
      selectedAsset: AssetItem(),
      jobTypes: [],
      jobPriority: [],
      selectedJobType: '',
      selectedJobPriority: '',
      jobActivities: [],
      selectedJobActivity: AssetItem(),
      selectedOpenDate: '',
      selectedDueDate: '',
      assignmentTeamOrUser: [],
      selectedAssignmentTeamOrUser: '',
      assignTo: [],
      selectedAssignTo: AssetItem(),
      description: '',uploadedAssignmentId: '');
}
