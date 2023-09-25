// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImagesModel _$$_ImagesModelFromJson(Map<String, dynamic> json) =>
    _$_ImagesModel(
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => Backdrop.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      logos: (json['logos'] as List<dynamic>?)
          ?.map((e) => Backdrop.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => Backdrop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ImagesModelToJson(_$_ImagesModel instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops,
      'id': instance.id,
      'logos': instance.logos,
      'posters': instance.posters,
    };

_$_Backdrop _$$_BackdropFromJson(Map<String, dynamic> json) => _$_Backdrop(
      aspectRatio: json["aspect_ratio"]?.toDouble(),
      height: json["height"],
      iso6391: json["iso_639_1"],
      filePath: json["file_path"],
      voteAverage: json["vote_average"]?.toDouble(),
      voteCount: json["vote_count"],
      width: json["width"],
    );

Map<String, dynamic> _$$_BackdropToJson(_$_Backdrop instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'file_path': instance.filePath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'width': instance.width,
    };
