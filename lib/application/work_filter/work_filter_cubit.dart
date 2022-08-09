import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'work_filter_state.dart';
part 'work_filter_cubit.freezed.dart';

@injectable
class WorkFilterCubit extends Cubit<WorkFilterState> {
  WorkFilterCubit() : super(WorkFilterState.initial());
  populate({
    List<WorkFilter>? activities,
    List<WorkFilter>? priorities,
    List<WorkFilter>? statuses,
  }) {
    emit(
      state.copyWith(
        activities: activities ?? state.activities,
        priorities: priorities ?? state.priorities,
        statuses: statuses ?? state.statuses,
      ),
    );
  }
}
