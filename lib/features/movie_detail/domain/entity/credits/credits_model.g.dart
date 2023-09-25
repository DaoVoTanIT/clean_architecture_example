// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditsModel _$$_CreditsModelFromJson(Map<String, dynamic> json) =>
    _$_CreditsModel(
      id: json['id'] as int?,
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreditsModelToJson(_$_CreditsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };
