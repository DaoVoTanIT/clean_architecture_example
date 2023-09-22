import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/now_playing_movie/now_playing_movie_model.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/top_rated_tv/top_rated_tv_model.dart';

part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
class MoviesModel with _$MoviesModel {
  factory MoviesModel({
    List<NowPlayingMovieModel>? trandingMovies,
    List<NowPlayingMovieModel>? nowPlayingMovieModels,
    List<NowPlayingMovieModel>? topRatedMovies,
    List<TopRatedTvModel>? trandingtv,
    List<TopRatedTvModel>? topRatedTv,
    List<NowPlayingMovieModel>? upcoming,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
}
