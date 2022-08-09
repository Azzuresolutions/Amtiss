import 'dart:convert';

import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/work/i_work_repository.dart';
import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:amtiss/domain/work/models/report_model.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'new_work_order_resources_bloc.freezed.dart';

part 'new_work_order_resources_event.dart';

part 'new_work_order_resources_state.dart';

@injectable
class NewWorkOrderResourcesBloc
    extends Bloc<NewWorkOrderResourcesEvent, NewWorkOrderResourcesState> {
  final IWorkRepository _repository;

  NewWorkOrderResourcesBloc(this._repository)
      : super(NewWorkOrderResourcesState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith());
    });

    on<_GetResourceCategory>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getResourceCategory();

      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            resourceCategories: r.assetItems!,
          ));
        },
      );
    });

    on<_ResourceCategorySelect>((event, emit) async {
      emit(state.copyWith(selectedResourceCategory: event.value));
    });

    on<_GetResourceItem>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response =
          await _repository.getResourceItem(state.selectedResourceCategory);

      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            resourceItems: r.assetItems!,
          ));
        },
      );
    });

    on<_ResourceItemSelect>((event, emit) async {
      emit(state.copyWith(selectedResourceItems: event.value));
    });

    on<_ResourcesDataAdd>((event, emit) async {
      var tempList = state.addedResources;
      tempList.add(state.selectedResource);
      emit(state.copyWith(addedResources: tempList));
    });

    on<_ResourcesDataRemove>((event, emit) async {
      var tempList = state.addedResources;
      tempList.removeWhere((element) => element.id == event.resourceSurvey.id);
      emit(state.copyWith(addedResources: tempList));
    });

    on<_QuantityChanged>((event, emit) {
      emit(state.copyWith(quantity: event.value));
    });

    on<_ResourceSelect>((event, emit) async {
      var tempResource = ResourcesData(
          category: state.selectedResourceCategory,
          quantity: state.quantity,
          id: state.addedResources.length + 1,
          item: state.selectedResourceItems);

      emit(state.copyWith(
          selectedResource: tempResource,
          selectedResourceCategory: AssetItem(),
          quantity: "",
          selectedResourceItems: AssetItem()));
    });


    on<_ResourcesSubmit>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      List<String> resourceList = [];
      for (var resource in state.addedResources) {
        resourceList.add(json.encode({
          'assignment_id': int.parse(event.assignmentId),
          'default_code': resource.id,
          'quantity': resource.quantity
        }));
      }
      var response = await _repository.resourcesAdd(resourceList: resourceList);
      response.fold(
            (l) => emit(
          state.copyWith(state: l),
        ),
            (r) {
          emit(state.copyWith(
              state: ResultState.success(r),
              addedResources: [],
              selectedResource: ResourcesData()));
        },
      );
    });

    on<_ClearResourceForm>((event, emit) {
      emit(state.copyWith(
          state: ResultState.initial(),
          addedResources: [],
          selectedResourceCategory: AssetItem(),
          selectedResourceItems: AssetItem(),
          selectedResource: ResourcesData()));
    });
  }
}
