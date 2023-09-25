// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  int? get id => throw _privateConstructorUsedError;
  List<VideosResult>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
  @useResult
  $Res call({int? id, List<VideosResult>? results});
}

/// @nodoc
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideosResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$_VideosCopyWith(_$_Videos value, $Res Function(_$_Videos) then) =
      __$$_VideosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<VideosResult>? results});
}

/// @nodoc
class __$$_VideosCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$_Videos>
    implements _$$_VideosCopyWith<$Res> {
  __$$_VideosCopyWithImpl(_$_Videos _value, $Res Function(_$_Videos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Videos(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideosResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Videos implements _Videos {
  _$_Videos({this.id, final List<VideosResult>? results}) : _results = results;

  factory _$_Videos.fromJson(Map<String, dynamic> json) =>
      _$$_VideosFromJson(json);

  @override
  final int? id;
  final List<VideosResult>? _results;
  @override
  List<VideosResult>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Videos(id: $id, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Videos &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      __$$_VideosCopyWithImpl<_$_Videos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  factory _Videos({final int? id, final List<VideosResult>? results}) =
      _$_Videos;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$_Videos.fromJson;

  @override
  int? get id;
  @override
  List<VideosResult>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      throw _privateConstructorUsedError;
}
