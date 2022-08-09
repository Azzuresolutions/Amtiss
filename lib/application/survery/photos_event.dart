part of 'photos_bloc.dart';

@freezed
class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.photos({int? id}) = _Photos;
}
