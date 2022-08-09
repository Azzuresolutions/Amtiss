import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/survey/i_survey_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/survey/models/photo_model.dart';

part 'photos_state.dart';
part 'photos_event.dart';
part 'photos_bloc.freezed.dart';

@injectable
class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final ISurveyRepository _repository;
  PhotoBloc(this._repository) : super(PhotoState.initial()) {
    on<_Photos>(
      (event, emit) async {
        emit(state.copyWith(state: ResultState.loading()));
        var response = await _repository.photos(event.id);
        response.fold(
          (l) => emit(
            state.copyWith(state: l),
          ),
          (r) {
            emit(state.copyWith(photoModel: r, state: ResultState.success(r)));
          },
        );
      },
    );
  }
}
