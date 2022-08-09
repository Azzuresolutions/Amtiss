part of 'new_work_order_resources_bloc.dart';

@freezed
class NewWorkOrderResourcesEvent with _$NewWorkOrderResourcesEvent {
  const factory NewWorkOrderResourcesEvent.started(String initialStatus) = _Started;
  const factory NewWorkOrderResourcesEvent.getResourceCategory() = _GetResourceCategory;
  const factory NewWorkOrderResourcesEvent.onResourceCategorySelect(AssetItem value) = _ResourceCategorySelect;
  const factory NewWorkOrderResourcesEvent.getResourceItem() = _GetResourceItem;
  const factory NewWorkOrderResourcesEvent.onResourceItemSelect(AssetItem value) = _ResourceItemSelect;
  const factory NewWorkOrderResourcesEvent.onQuantityChanged(String value) = _QuantityChanged;
  const factory NewWorkOrderResourcesEvent.onResourceAdd() = _ResourcesDataAdd;
  const factory NewWorkOrderResourcesEvent.onResourceRemove(ResourcesData resourceSurvey) = _ResourcesDataRemove;
  const factory NewWorkOrderResourcesEvent.onResourceSelect() = _ResourceSelect;
  const factory NewWorkOrderResourcesEvent.onResourceSubmit(String assignmentId) = _ResourcesSubmit;
  const factory NewWorkOrderResourcesEvent.onClearResourceForm() = _ClearResourceForm;
}