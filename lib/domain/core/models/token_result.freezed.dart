// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenResultElement _$TokenResultElementFromJson(Map<String, dynamic> json) {
  return _TokenResultElement.fromJson(json);
}

/// @nodoc
class _$TokenResultElementTearOff {
  const _$TokenResultElementTearOff();

  _TokenResultElement call(
      {String? token, int? id, @JsonKey(name: "company_id") int? companyId}) {
    return _TokenResultElement(
      token: token,
      id: id,
      companyId: companyId,
    );
  }

  TokenResultElement fromJson(Map<String, Object?> json) {
    return TokenResultElement.fromJson(json);
  }
}

/// @nodoc
const $TokenResultElement = _$TokenResultElementTearOff();

/// @nodoc
mixin _$TokenResultElement {
  String? get token => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "company_id")
  int? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenResultElementCopyWith<TokenResultElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResultElementCopyWith<$Res> {
  factory $TokenResultElementCopyWith(
          TokenResultElement value, $Res Function(TokenResultElement) then) =
      _$TokenResultElementCopyWithImpl<$Res>;
  $Res call(
      {String? token, int? id, @JsonKey(name: "company_id") int? companyId});
}

/// @nodoc
class _$TokenResultElementCopyWithImpl<$Res>
    implements $TokenResultElementCopyWith<$Res> {
  _$TokenResultElementCopyWithImpl(this._value, this._then);

  final TokenResultElement _value;
  // ignore: unused_field
  final $Res Function(TokenResultElement) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? id = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TokenResultElementCopyWith<$Res>
    implements $TokenResultElementCopyWith<$Res> {
  factory _$TokenResultElementCopyWith(
          _TokenResultElement value, $Res Function(_TokenResultElement) then) =
      __$TokenResultElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? token, int? id, @JsonKey(name: "company_id") int? companyId});
}

/// @nodoc
class __$TokenResultElementCopyWithImpl<$Res>
    extends _$TokenResultElementCopyWithImpl<$Res>
    implements _$TokenResultElementCopyWith<$Res> {
  __$TokenResultElementCopyWithImpl(
      _TokenResultElement _value, $Res Function(_TokenResultElement) _then)
      : super(_value, (v) => _then(v as _TokenResultElement));

  @override
  _TokenResultElement get _value => super._value as _TokenResultElement;

  @override
  $Res call({
    Object? token = freezed,
    Object? id = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_TokenResultElement(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenResultElement implements _TokenResultElement {
  const _$_TokenResultElement(
      {this.token, this.id, @JsonKey(name: "company_id") this.companyId});

  factory _$_TokenResultElement.fromJson(Map<String, dynamic> json) =>
      _$$_TokenResultElementFromJson(json);

  @override
  final String? token;
  @override
  final int? id;
  @override
  @JsonKey(name: "company_id")
  final int? companyId;

  @override
  String toString() {
    return 'TokenResultElement(token: $token, id: $id, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenResultElement &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$TokenResultElementCopyWith<_TokenResultElement> get copyWith =>
      __$TokenResultElementCopyWithImpl<_TokenResultElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenResultElementToJson(this);
  }
}

abstract class _TokenResultElement implements TokenResultElement {
  const factory _TokenResultElement(
      {String? token,
      int? id,
      @JsonKey(name: "company_id") int? companyId}) = _$_TokenResultElement;

  factory _TokenResultElement.fromJson(Map<String, dynamic> json) =
      _$_TokenResultElement.fromJson;

  @override
  String? get token;
  @override
  int? get id;
  @override
  @JsonKey(name: "company_id")
  int? get companyId;
  @override
  @JsonKey(ignore: true)
  _$TokenResultElementCopyWith<_TokenResultElement> get copyWith =>
      throw _privateConstructorUsedError;
}

PurpleTokenResult _$PurpleTokenResultFromJson(Map<String, dynamic> json) {
  return _PurpleTokenResult.fromJson(json);
}

/// @nodoc
class _$PurpleTokenResultTearOff {
  const _$PurpleTokenResultTearOff();

  _PurpleTokenResult call({bool? status, String? msg}) {
    return _PurpleTokenResult(
      status: status,
      msg: msg,
    );
  }

  PurpleTokenResult fromJson(Map<String, Object?> json) {
    return PurpleTokenResult.fromJson(json);
  }
}

/// @nodoc
const $PurpleTokenResult = _$PurpleTokenResultTearOff();

/// @nodoc
mixin _$PurpleTokenResult {
  bool? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurpleTokenResultCopyWith<PurpleTokenResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurpleTokenResultCopyWith<$Res> {
  factory $PurpleTokenResultCopyWith(
          PurpleTokenResult value, $Res Function(PurpleTokenResult) then) =
      _$PurpleTokenResultCopyWithImpl<$Res>;
  $Res call({bool? status, String? msg});
}

/// @nodoc
class _$PurpleTokenResultCopyWithImpl<$Res>
    implements $PurpleTokenResultCopyWith<$Res> {
  _$PurpleTokenResultCopyWithImpl(this._value, this._then);

  final PurpleTokenResult _value;
  // ignore: unused_field
  final $Res Function(PurpleTokenResult) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PurpleTokenResultCopyWith<$Res>
    implements $PurpleTokenResultCopyWith<$Res> {
  factory _$PurpleTokenResultCopyWith(
          _PurpleTokenResult value, $Res Function(_PurpleTokenResult) then) =
      __$PurpleTokenResultCopyWithImpl<$Res>;
  @override
  $Res call({bool? status, String? msg});
}

/// @nodoc
class __$PurpleTokenResultCopyWithImpl<$Res>
    extends _$PurpleTokenResultCopyWithImpl<$Res>
    implements _$PurpleTokenResultCopyWith<$Res> {
  __$PurpleTokenResultCopyWithImpl(
      _PurpleTokenResult _value, $Res Function(_PurpleTokenResult) _then)
      : super(_value, (v) => _then(v as _PurpleTokenResult));

  @override
  _PurpleTokenResult get _value => super._value as _PurpleTokenResult;

  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_PurpleTokenResult(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurpleTokenResult implements _PurpleTokenResult {
  const _$_PurpleTokenResult({this.status, this.msg});

  factory _$_PurpleTokenResult.fromJson(Map<String, dynamic> json) =>
      _$$_PurpleTokenResultFromJson(json);

  @override
  final bool? status;
  @override
  final String? msg;

  @override
  String toString() {
    return 'PurpleTokenResult(status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurpleTokenResult &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$PurpleTokenResultCopyWith<_PurpleTokenResult> get copyWith =>
      __$PurpleTokenResultCopyWithImpl<_PurpleTokenResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurpleTokenResultToJson(this);
  }
}

abstract class _PurpleTokenResult implements PurpleTokenResult {
  const factory _PurpleTokenResult({bool? status, String? msg}) =
      _$_PurpleTokenResult;

  factory _PurpleTokenResult.fromJson(Map<String, dynamic> json) =
      _$_PurpleTokenResult.fromJson;

  @override
  bool? get status;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$PurpleTokenResultCopyWith<_PurpleTokenResult> get copyWith =>
      throw _privateConstructorUsedError;
}
