// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieInformationModel _$MovieInformationModelFromJson(
    Map<String, dynamic> json) {
  return _MovieInformationModel.fromJson(json);
}

/// @nodoc
mixin _$MovieInformationModel {
  bool? get success => throw _privateConstructorUsedError;
  MovieInformationDb? get data => throw _privateConstructorUsedError;
  Videos? get videos => throw _privateConstructorUsedError;
  ImagesModel? get images => throw _privateConstructorUsedError;
  CreditsModel? get credits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieInformationModelCopyWith<MovieInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInformationModelCopyWith<$Res> {
  factory $MovieInformationModelCopyWith(MovieInformationModel value,
          $Res Function(MovieInformationModel) then) =
      _$MovieInformationModelCopyWithImpl<$Res, MovieInformationModel>;
  @useResult
  $Res call(
      {bool? success,
      MovieInformationDb? data,
      Videos? videos,
      ImagesModel? images,
      CreditsModel? credits});

  $MovieInformationDbCopyWith<$Res>? get data;
  $VideosCopyWith<$Res>? get videos;
  $ImagesModelCopyWith<$Res>? get images;
  $CreditsModelCopyWith<$Res>? get credits;
}

/// @nodoc
class _$MovieInformationModelCopyWithImpl<$Res,
        $Val extends MovieInformationModel>
    implements $MovieInformationModelCopyWith<$Res> {
  _$MovieInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? videos = freezed,
    Object? images = freezed,
    Object? credits = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieInformationDb?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesModel?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieInformationDbCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MovieInformationDbCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideosCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $VideosCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImagesModelCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImagesModelCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditsModelCopyWith<$Res>? get credits {
    if (_value.credits == null) {
      return null;
    }

    return $CreditsModelCopyWith<$Res>(_value.credits!, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieInformationModelCopyWith<$Res>
    implements $MovieInformationModelCopyWith<$Res> {
  factory _$$_MovieInformationModelCopyWith(_$_MovieInformationModel value,
          $Res Function(_$_MovieInformationModel) then) =
      __$$_MovieInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      MovieInformationDb? data,
      Videos? videos,
      ImagesModel? images,
      CreditsModel? credits});

  @override
  $MovieInformationDbCopyWith<$Res>? get data;
  @override
  $VideosCopyWith<$Res>? get videos;
  @override
  $ImagesModelCopyWith<$Res>? get images;
  @override
  $CreditsModelCopyWith<$Res>? get credits;
}

/// @nodoc
class __$$_MovieInformationModelCopyWithImpl<$Res>
    extends _$MovieInformationModelCopyWithImpl<$Res, _$_MovieInformationModel>
    implements _$$_MovieInformationModelCopyWith<$Res> {
  __$$_MovieInformationModelCopyWithImpl(_$_MovieInformationModel _value,
      $Res Function(_$_MovieInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? videos = freezed,
    Object? images = freezed,
    Object? credits = freezed,
  }) {
    return _then(_$_MovieInformationModel(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieInformationDb?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesModel?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieInformationModel implements _MovieInformationModel {
  _$_MovieInformationModel(
      {this.success, this.data, this.videos, this.images, this.credits});

  factory _$_MovieInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieInformationModelFromJson(json);

  @override
  final bool? success;
  @override
  final MovieInformationDb? data;
  @override
  final Videos? videos;
  @override
  final ImagesModel? images;
  @override
  final CreditsModel? credits;

  @override
  String toString() {
    return 'MovieInformationModel(success: $success, data: $data, videos: $videos, images: $images, credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieInformationModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, data, videos, images, credits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieInformationModelCopyWith<_$_MovieInformationModel> get copyWith =>
      __$$_MovieInformationModelCopyWithImpl<_$_MovieInformationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieInformationModelToJson(
      this,
    );
  }
}

abstract class _MovieInformationModel implements MovieInformationModel {
  factory _MovieInformationModel(
      {final bool? success,
      final MovieInformationDb? data,
      final Videos? videos,
      final ImagesModel? images,
      final CreditsModel? credits}) = _$_MovieInformationModel;

  factory _MovieInformationModel.fromJson(Map<String, dynamic> json) =
      _$_MovieInformationModel.fromJson;

  @override
  bool? get success;
  @override
  MovieInformationDb? get data;
  @override
  Videos? get videos;
  @override
  ImagesModel? get images;
  @override
  CreditsModel? get credits;
  @override
  @JsonKey(ignore: true)
  _$$_MovieInformationModelCopyWith<_$_MovieInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
