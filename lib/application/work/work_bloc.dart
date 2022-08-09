import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/work/i_work_repository.dart';
import 'package:amtiss/domain/work/models/work_result.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'work_event.dart';
part 'work_state.dart';
part 'work_bloc.freezed.dart';

@injectable
class WorkBloc extends Bloc<WorkEvent, WorkState> {
  final IWorkRepository _repository;
  WorkBloc(this._repository) : super(WorkState.initial()) {
    on<_Update>((event, emit) async {
      List<WorkOrder> filteredAct = state.works.where((e) {
        var fullText = e.toJson().toString();
        var r = 0;
        event.status.split(" ").forEach((element) {
          if (fullText.toLowerCase().contains(element.toLowerCase())) {
            r += 1;
          }
        });
        return r > 0;
      }).toList();
      List<WorkOrder> filteredStat = filteredAct.where((e) {
        var fullText = e.toJson().toString();
        var r = 0;
        event.activity.split(" ").forEach((element) {
          if (fullText.toLowerCase().contains(element.toLowerCase())) {
            r += 1;
          }
        });
        return r > 0;
      }).toList();
      List<WorkOrder> filteredPrio = filteredStat.where((e) {
        var fullText = e.toJson().toString();
        var r = 0;
        event.priority.split(" ").forEach((element) {
          if (fullText.toLowerCase().contains(element.toLowerCase())) {
            r += 1;
          }
        });
        return r > 0;
      }).toList();
      emit(state.copyWith(
          state: ResultState.success(
        filterByMonth(
          filteredPrio,
        ),
      )));
    });
    on<_Search>((event, emit) async {
      var works = state.works
          .where((x) => x
              .toJson()
              .toString()
              .toLowerCase()
              .contains(event.query.toLowerCase()))
          .toList();
      emit(
        state.copyWith(
          state: ResultState.success(
            filterByMonth(works),
          ),
        ),
      );
    });
    on<_Get>((event, emit) async {
      emit(state.copyWith(state: ResultState.loading()));
      var response = await _repository.getWorks();
      response.fold(
        (l) => emit(
          state.copyWith(state: l),
        ),
        (r) {
          emit(state.copyWith(
              works: r.workOrder ?? [],
              state: ResultState.success(
                filterByMonth(r.workOrder ?? []),
              )));
        },
      );
    });
  }

  Map<String, List<WorkOrder>> filterByMonth(List<WorkOrder> r) {
    Map<String, List<WorkOrder>> result = {};
    for (var element in r) {
      if (element.openDate != null) {
        var formattedDate = DateFormat("MMMM yyyy").format(element.openDate!);
        if (result[formattedDate] != null) {
          result[formattedDate]?.add(element);
        } else {
          if (element.openDate != null) result[formattedDate] = [element];
        }
      }
    }
    return result;
  }
}
