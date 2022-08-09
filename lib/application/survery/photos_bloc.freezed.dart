// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoStateTearOff {
  const _$PhotoStateTearOff();

  _PhotoState call(
      {required ResultState state, required List<PhotoModelData> photoModel}) {
    return _PhotoState(
      state: state,
      photoModel: photoModel,
    );
  }
}

/// @nodoc
const $PhotoState = _$PhotoStateTearOff();

/// @nodoc
mixin _$PhotoState {
  ResultState get state => throw _privateConstructorUsedError;
  List<PhotoModelData> get photoModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoStateCopyWith<PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
  $Res call({ResultState state, List<PhotoModelData> photoModel});

  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? photoModel = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      photoModel: photoModel == freezed
          ? _value.photoModel
          : photoModel // ignore: cast_nullable_to_non_nullable
              as List<PhotoModelData>,
    ));
  }

  @override
  $ResultStateCopyWith<$Res> get state {
    return $ResultStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$PhotoStateCopyWith<$Res> implements $PhotoStateCopyWith<$Res> {
  factory _$PhotoStateCopyWith(
          _PhotoState value, $Res Function(_PhotoState) then) =
      __$PhotoStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState state, List<PhotoModelData> photoModel});

  @override
  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class __$PhotoStateCopyWithImpl<$Res> extends _$PhotoStateCopyWithImpl<$Res>
    implements _$PhotoStateCopyWith<$Res> {
  __$PhotoStateCopyWithImpl(
      _PhotoState _value, $Res Function(_PhotoState) _then)
      : super(_value, (v) => _then(v as _PhotoState));

  @override
  _PhotoState get _value => super._value as _PhotoState;

  @override
  $Res call({
    Object? state = freezed,
    Object? photoModel = freezed,
  }) {
    return _then(_PhotoState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      photoModel: photoModel == freezed
          ? _value.photoModel
          : photoModel // ignore: cast_nullable_to_non_nullable
              as List<PhotoModelData>,
    ));
  }
}

/// @nodoc

class _$_PhotoState implements _PhotoState {
  const _$_PhotoState({required this.state, required this.photoModel});

  @override
  final ResultState state;
  @override
  final List<PhotoModelData> photoModel;

  @override
  String toString() {
    return 'PhotoState(state: $state, photoModel: $photoModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.photoModel, photoModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(photoModel));

  @JsonKey(ignore: true)
  @override
  _$PhotoStateCopyWith<_PhotoState> get copyWith =>
      __$PhotoStateCopyWithImpl<_PhotoState>(this, _$identity);
}

abstract class _PhotoState implements PhotoState {
  const factory _PhotoState(
      {required ResultState state,
      required List<PhotoModelData> photoModel}) = _$_PhotoState;

  @override
  ResultState get state;
  @override
  List<PhotoModelData> get photoModel;
  @override
  @JsonKey(ignore: true)
  _$PhotoStateCopyWith<_PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhotoEventTearOff {
  const _$PhotoEventTearOff();

  _Photos photos({int? id}) {
    return _Photos(
      id: id,
    );
  }
}

/// @nodoc
const $PhotoEvent = _$PhotoEventTearOff();

/// @nodoc
mixin _$PhotoEvent {
  int? get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) photos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? id)? photos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? photos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Photos value) photos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Photos value)? photos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Photos value)? photos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoEventCopyWith<PhotoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEventCopyWith<$Res> {
  factory $PhotoEventCopyWith(
          PhotoEvent value, $Res Function(PhotoEvent) then) =
      _$PhotoEventCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class _$PhotoEventCopyWithImpl<$Res> implements $PhotoEventCopyWith<$Res> {
  _$PhotoEventCopyWithImpl(this._value, this._then);

  final PhotoEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PhotosCopyWith<$Res> implements $PhotoEventCopyWith<$Res> {
  factory _$PhotosCopyWith(_Photos value, $Res Function(_Photos) then) =
      __$PhotosCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class __$PhotosCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
    implements _$PhotosCopyWith<$Res> {
  __$PhotosCopyWithImpl(_Photos _value, $Res Function(_Photos) _then)
      : super(_value, (v) => _then(v as _Photos));

  @override
  _Photos get _value => super._value as _Photos;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Photos(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Photos implements _Photos {
  const _$_Photos({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'PhotoEvent.photos(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Photos &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PhotosCopyWith<_Photos> get copyWith =>
      __$PhotosCopyWithImpl<_Photos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) photos,
  }) {
    return photos(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? id)? photos,
  }) {
    return photos?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? photos,
    required TResult orElse(),
  }) {
    if (photos != null) {
      return photos(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Photos value) photos,
  }) {
    return photos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Photos value)? photos,
  }) {
    return photos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Photos value)? photos,
    required TResult orElse(),
  }) {
    if (photos != null) {
      return photos(this);
    }
    return orElse();
  }
}

abstract class _Photos implements PhotoEvent {
  const factory _Photos({int? id}) = _$_Photos;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$PhotosCopyWith<_Photos> get copyWith => throw _privateConstructorUsedError;
}
