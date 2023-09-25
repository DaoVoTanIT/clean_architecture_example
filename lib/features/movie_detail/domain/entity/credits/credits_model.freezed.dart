// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credits_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) {
  return _CreditsModel.fromJson(json);
}

/// @nodoc
mixin _$CreditsModel {
  int? get id => throw _privateConstructorUsedError;
  List<CastModel>? get cast => throw _privateConstructorUsedError;
  List<CastModel>? get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsModelCopyWith<CreditsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsModelCopyWith<$Res> {
  factory $CreditsModelCopyWith(
          CreditsModel value, $Res Function(CreditsModel) then) =
      _$CreditsModelCopyWithImpl<$Res, CreditsModel>;
  @useResult
  $Res call({int? id, List<CastModel>? cast, List<CastModel>? crew});
}

/// @nodoc
class _$CreditsModelCopyWithImpl<$Res, $Val extends CreditsModel>
    implements $CreditsModelCopyWith<$Res> {
  _$CreditsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>?,
      crew: freezed == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<CastModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditsModelCopyWith<$Res>
    implements $CreditsModelCopyWith<$Res> {
  factory _$$_CreditsModelCopyWith(
          _$_CreditsModel value, $Res Function(_$_CreditsModel) then) =
      __$$_CreditsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<CastModel>? cast, List<CastModel>? crew});
}

/// @nodoc
class __$$_CreditsModelCopyWithImpl<$Res>
    extends _$CreditsModelCopyWithImpl<$Res, _$_CreditsModel>
    implements _$$_CreditsModelCopyWith<$Res> {
  __$$_CreditsModelCopyWithImpl(
      _$_CreditsModel _value, $Res Function(_$_CreditsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_$_CreditsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>?,
      crew: freezed == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<CastModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreditsModel implements _CreditsModel {
  _$_CreditsModel(
      {this.id, final List<CastModel>? cast, final List<CastModel>? crew})
      : _cast = cast,
        _crew = crew;

  factory _$_CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreditsModelFromJson(json);

  @override
  final int? id;
  final List<CastModel>? _cast;
  @override
  List<CastModel>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CastModel>? _crew;
  @override
  List<CastModel>? get crew {
    final value = _crew;
    if (value == null) return null;
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditsModel(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditsModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditsModelCopyWith<_$_CreditsModel> get copyWith =>
      __$$_CreditsModelCopyWithImpl<_$_CreditsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditsModelToJson(
      this,
    );
  }
}

abstract class _CreditsModel implements CreditsModel {
  factory _CreditsModel(
      {final int? id,
      final List<CastModel>? cast,
      final List<CastModel>? crew}) = _$_CreditsModel;

  factory _CreditsModel.fromJson(Map<String, dynamic> json) =
      _$_CreditsModel.fromJson;

  @override
  int? get id;
  @override
  List<CastModel>? get cast;
  @override
  List<CastModel>? get crew;
  @override
  @JsonKey(ignore: true)
  _$$_CreditsModelCopyWith<_$_CreditsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
