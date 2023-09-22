// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesModel _$$_MoviesModelFromJson(Map<String, dynamic> json) =>
    _$_MoviesModel(
      trandingMovies: (json['trandingMovies'] as List<dynamic>?)
          ?.map((e) => NowPlayingMovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nowPlayingMovieModels: (json['nowPlayingMovies'] as List<dynamic>?)
          ?.map((e) => NowPlayingMovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topRatedMovies: (json['topRatedMovies'] as List<dynamic>?)
          ?.map((e) => NowPlayingMovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trandingtv: (json['trandingtv'] as List<dynamic>?)
          ?.map((e) => TopRatedTvModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topRatedTv: (json['topRatedTv'] as List<dynamic>?)
          ?.map((e) => TopRatedTvModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      upcoming: (json['upcoming'] as List<dynamic>?)
          ?.map((e) => NowPlayingMovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoviesModelToJson(_$_MoviesModel instance) =>
    <String, dynamic>{
      'trandingMovies': instance.trandingMovies,
      'nowPlayingMovies': instance.nowPlayingMovieModels,
      'topRatedMovies': instance.topRatedMovies,
      'trandingtv': instance.trandingtv,
      'topRatedTv': instance.topRatedTv,
      'upcoming': instance.upcoming,
    };
