import 'package:freezed_annotation/freezed_annotation.dart';
part 'now_playing_movie_model.freezed.dart';
part 'now_playing_movie_model.g.dart';

@freezed
class NowPlayingMovieModel with _$NowPlayingMovieModel {
  factory NowPlayingMovieModel({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
    String? mediaType,
  }) = _NowPlayingMovieModel;

  factory NowPlayingMovieModel.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingMovieModelFromJson(json);
}
