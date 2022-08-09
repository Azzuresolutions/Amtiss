import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/work/i_work_repository.dart';
import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_work_order_detail_event.dart';

part 'new_work_order_detail_state.dart';

part 'new_work_order_detail_bloc.freezed.dart';

@injectable
class NewWorkOrderDetailBloc
    extends Bloc<NewWorkOrderDetailEvent, NewWorkOrderDetailState> {
  final IWorkRepository _repository;

  NewWorkOrderDetailBloc(this._repository)
      : super(NewWorkOrderDetailState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        category: [],
      ));
    });
    on<_GetCategory>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getCategories();

      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            category: r.assetItems!,
          ));
        },
      );
    });

    on<_GetLocation>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getLocation();
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            locations: r.assetItems!,
          ));
        },
      );
    });

    on<_GetAssets>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getAssets(
          state.selectedCategory, state.selectedLocation);
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            assets: r.assetItems!,
          ));
        },
      );
    });

    on<_GetAssignTo>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getAssignTo(state.selectedCategory,
          state.selectedLocation, state.selectedAssignmentTeamOrUser);
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            assignTo: r.assetItems!,
          ));
        },
      );
    });

    on<_GetJobActivities>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getJobActivities();
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
            jobActivities: r.assetItems!,
          ));
        },
      );
    });

    on<_GetJobPriority>((event, emit) async {
      emit(state.copyWith(
        jobPriority: event.jobPriorities,
      ));
    });

    on<_GetJobType>((event, emit) async {
      emit(state.copyWith(
        jobTypes: event.jobTypes,
      ));
    });

    on<_GetAssignmentTeamOrUser>((event, emit) async {
      emit(state.copyWith(
        assignmentTeamOrUser: event.assignmentTeamOrUser,
      ));
    });

    on<_CategorySelect>((event, emit) async {
      emit(state.copyWith(
          selectedCategory: event.value,
          selectedLocation: AssetItem(),
          selectedAsset: AssetItem(),
          selectedJobPriority: '',
          selectedJobType: ''));
    });

    on<_LocationSelect>((event, emit) async {
      emit(state.copyWith(
          selectedLocation: event.value,
          selectedAsset: AssetItem(),
          selectedJobPriority: '',
          selectedJobType: ''));
    });

    on<_AssetSelect>((event, emit) async {
      emit(state.copyWith(
          selectedAsset: event.value,
          selectedJobPriority: '',
          selectedJobType: ''));
    });

    on<_JobPrioritySelect>((event, emit) async {
      emit(state.copyWith(selectedJobPriority: event.value));
    });

    on<_JobTypeSelect>((event, emit) async {
      emit(state.copyWith(
          selectedJobType: event.value, selectedJobPriority: ''));
    });

    on<_JobActivitySelect>((event, emit) async {
      emit(state.copyWith(
          selectedJobActivity: event.value, selectedJobPriority: ''));
    });

    on<_OpenDateSelect>((event, emit) async {
      emit(state.copyWith(
          selectedOpenDate: event.value,
          selectedDueDate: '',
          selectedJobPriority: ''));
    });

    on<_DueDateSelect>((event, emit) async {
      emit(state.copyWith(
          selectedDueDate: event.value, selectedJobPriority: ''));
    });

    on<_AssignmentTeamOrUserSelect>((event, emit) async {
      emit(state.copyWith(selectedAssignmentTeamOrUser: event.value));
    });

    on<_AssignToSelect>((event, emit) async {
      emit(state.copyWith(selectedAssignTo: event.value));
    });

    on<_DiscriptionChanged>((event, emit) {
      emit(state.copyWith(description: event.value));
    });

    on<_GroupAssignmentAdd>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.groupAssignmentAdd(
          category: state.selectedCategory,
          location: state.selectedLocation,
          selectedAsset: state.selectedAsset,
          selectedJobPriority: state.selectedJobPriority,
          description: state.description,
          selectedJobType: state.selectedJobType,
          selectedAssignTo: state.selectedAssignTo,
          selectedDueDate: state.selectedDueDate,
          selectedJobActivity: state.selectedJobActivity,
          selectedOpenDate: state.selectedOpenDate,
          selectedTeamOrUser: state.selectedAssignmentTeamOrUser);
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
              state: ResultState.success(r),
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
              description: '',
              uploadedAssignmentId: r.amtissAssignment![0].id.toString()));
        },
      );
    });

    on<_ClearForm>((event, emit) {
      emit(state.copyWith(
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
          description: ''));
    });
  }
}
