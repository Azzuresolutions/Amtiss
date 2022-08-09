part of 'photos_bloc.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState({
    required ResultState state,
    required List<PhotoModelData> photoModel,
  }) = _PhotoState;

  factory PhotoState.initial() =>
      PhotoState(state: ResultState.initial(), photoModel: []);
}
