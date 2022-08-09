part of 'new_work_order_resources_bloc.dart';

@freezed
class NewWorkOrderResourcesState with _$NewWorkOrderResourcesState {
  const factory NewWorkOrderResourcesState({
    required ResultState state,
    required List<AssetItem> resourceCategories,
    required AssetItem selectedResourceCategory,
    required List<AssetItem> resourceItems,
    required AssetItem selectedResourceItems,
    required String quantity,
    required List<ResourcesData> addedResources,
    required ResourcesData selectedResource,
  }) = _NewWorkOrderResourcesState;

  factory NewWorkOrderResourcesState.initial() => NewWorkOrderResourcesState(
      state: ResultState.initial(),
    resourceCategories: [],
    selectedResourceCategory: AssetItem(),
    resourceItems: [],
    selectedResourceItems: AssetItem(),
      quantity: '',
      selectedResource: ResourcesData(),
    addedResources: []
  );
}
