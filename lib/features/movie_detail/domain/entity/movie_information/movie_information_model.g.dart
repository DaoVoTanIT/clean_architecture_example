// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieInformationModel _$$_MovieInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_MovieInformationModel(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : MovieInformationDb.fromJson(json['data'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : Videos.fromJson(json['videos'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : ImagesModel.fromJson(json['images'] as Map<String, dynamic>),
      credits: json['credits'] == null
          ? null
          : CreditsModel.fromJson(json['credits'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieInformationModelToJson(
        _$_MovieInformationModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'videos': instance.videos,
      'images': instance.images,
      'credits': instance.credits,
    };
