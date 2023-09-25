// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) {
  return _ImagesModel.fromJson(json);
}

/// @nodoc
mixin _$ImagesModel {
  List<Backdrop>? get backdrops => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<Backdrop>? get logos => throw _privateConstructorUsedError;
  List<Backdrop>? get posters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesModelCopyWith<ImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesModelCopyWith<$Res> {
  factory $ImagesModelCopyWith(
          ImagesModel value, $Res Function(ImagesModel) then) =
      _$ImagesModelCopyWithImpl<$Res, ImagesModel>;
  @useResult
  $Res call(
      {List<Backdrop>? backdrops,
      int? id,
      List<Backdrop>? logos,
      List<Backdrop>? posters});
}

/// @nodoc
class _$ImagesModelCopyWithImpl<$Res, $Val extends ImagesModel>
    implements $ImagesModelCopyWith<$Res> {
  _$ImagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? id = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: freezed == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logos: freezed == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      posters: freezed == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagesModelCopyWith<$Res>
    implements $ImagesModelCopyWith<$Res> {
  factory _$$_ImagesModelCopyWith(
          _$_ImagesModel value, $Res Function(_$_ImagesModel) then) =
      __$$_ImagesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Backdrop>? backdrops,
      int? id,
      List<Backdrop>? logos,
      List<Backdrop>? posters});
}

/// @nodoc
class __$$_ImagesModelCopyWithImpl<$Res>
    extends _$ImagesModelCopyWithImpl<$Res, _$_ImagesModel>
    implements _$$_ImagesModelCopyWith<$Res> {
  __$$_ImagesModelCopyWithImpl(
      _$_ImagesModel _value, $Res Function(_$_ImagesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? id = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_$_ImagesModel(
      backdrops: freezed == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logos: freezed == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
      posters: freezed == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<Backdrop>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImagesModel implements _ImagesModel {
  _$_ImagesModel(
      {final List<Backdrop>? backdrops,
      this.id,
      final List<Backdrop>? logos,
      final List<Backdrop>? posters})
      : _backdrops = backdrops,
        _logos = logos,
        _posters = posters;

  factory _$_ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesModelFromJson(json);

  final List<Backdrop>? _backdrops;
  @override
  List<Backdrop>? get backdrops {
    final value = _backdrops;
    if (value == null) return null;
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  final List<Backdrop>? _logos;
  @override
  List<Backdrop>? get logos {
    final value = _logos;
    if (value == null) return null;
    if (_logos is EqualUnmodifiableListView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Backdrop>? _posters;
  @override
  List<Backdrop>? get posters {
    final value = _posters;
    if (value == null) return null;
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImagesModel(backdrops: $backdrops, id: $id, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesModel &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._logos, _logos) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      id,
      const DeepCollectionEquality().hash(_logos),
      const DeepCollectionEquality().hash(_posters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesModelCopyWith<_$_ImagesModel> get copyWith =>
      __$$_ImagesModelCopyWithImpl<_$_ImagesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesModelToJson(
      this,
    );
  }
}

abstract class _ImagesModel implements ImagesModel {
  factory _ImagesModel(
      {final List<Backdrop>? backdrops,
      final int? id,
      final List<Backdrop>? logos,
      final List<Backdrop>? posters}) = _$_ImagesModel;

  factory _ImagesModel.fromJson(Map<String, dynamic> json) =
      _$_ImagesModel.fromJson;

  @override
  List<Backdrop>? get backdrops;
  @override
  int? get id;
  @override
  List<Backdrop>? get logos;
  @override
  List<Backdrop>? get posters;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesModelCopyWith<_$_ImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Backdrop _$BackdropFromJson(Map<String, dynamic> json) {
  return _Backdrop.fromJson(json);
}

/// @nodoc
mixin _$Backdrop {
  double? get aspectRatio => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get iso6391 => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackdropCopyWith<Backdrop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackdropCopyWith<$Res> {
  factory $BackdropCopyWith(Backdrop value, $Res Function(Backdrop) then) =
      _$BackdropCopyWithImpl<$Res, Backdrop>;
  @useResult
  $Res call(
      {double? aspectRatio,
      int? height,
      String? iso6391,
      String? filePath,
      double? voteAverage,
      int? voteCount,
      int? width});
}

/// @nodoc
class _$BackdropCopyWithImpl<$Res, $Val extends Backdrop>
    implements $BackdropCopyWith<$Res> {
  _$BackdropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BackdropCopyWith<$Res> implements $BackdropCopyWith<$Res> {
  factory _$$_BackdropCopyWith(
          _$_Backdrop value, $Res Function(_$_Backdrop) then) =
      __$$_BackdropCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? aspectRatio,
      int? height,
      String? iso6391,
      String? filePath,
      double? voteAverage,
      int? voteCount,
      int? width});
}

/// @nodoc
class __$$_BackdropCopyWithImpl<$Res>
    extends _$BackdropCopyWithImpl<$Res, _$_Backdrop>
    implements _$$_BackdropCopyWith<$Res> {
  __$$_BackdropCopyWithImpl(
      _$_Backdrop _value, $Res Function(_$_Backdrop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Backdrop(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Backdrop implements _Backdrop {
  _$_Backdrop(
      {this.aspectRatio,
      this.height,
      this.iso6391,
      this.filePath,
      this.voteAverage,
      this.voteCount,
      this.width});

  factory _$_Backdrop.fromJson(Map<String, dynamic> json) =>
      _$$_BackdropFromJson(json);

  @override
  final double? aspectRatio;
  @override
  final int? height;
  @override
  final String? iso6391;
  @override
  final String? filePath;
  @override
  final double? voteAverage;
  @override
  final int? voteCount;
  @override
  final int? width;

  @override
  String toString() {
    return 'Backdrop(aspectRatio: $aspectRatio, height: $height, iso6391: $iso6391, filePath: $filePath, voteAverage: $voteAverage, voteCount: $voteCount, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Backdrop &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aspectRatio, height, iso6391,
      filePath, voteAverage, voteCount, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackdropCopyWith<_$_Backdrop> get copyWith =>
      __$$_BackdropCopyWithImpl<_$_Backdrop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BackdropToJson(
      this,
    );
  }
}

abstract class _Backdrop implements Backdrop {
  factory _Backdrop(
      {final double? aspectRatio,
      final int? height,
      final String? iso6391,
      final String? filePath,
      final double? voteAverage,
      final int? voteCount,
      final int? width}) = _$_Backdrop;

  factory _Backdrop.fromJson(Map<String, dynamic> json) = _$_Backdrop.fromJson;

  @override
  double? get aspectRatio;
  @override
  int? get height;
  @override
  String? get iso6391;
  @override
  String? get filePath;
  @override
  double? get voteAverage;
  @override
  int? get voteCount;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_BackdropCopyWith<_$_Backdrop> get copyWith =>
      throw _privateConstructorUsedError;
}
