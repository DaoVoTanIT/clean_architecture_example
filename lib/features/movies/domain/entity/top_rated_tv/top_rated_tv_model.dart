import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_rated_tv_model.freezed.dart';
part 'top_rated_tv_model.g.dart';

@freezed
class TopRatedTvModel with _$TopRatedTvModel {
  factory TopRatedTvModel({
    String? backdropPath,
    DateTime? firstAirDate,
    List<int>? genreIds,
    int? id,
    String? name,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalName,
    String? overview,
    double? popularity,
    String? posterPath,
    double? voteAverage,
    int? voteCount,
    bool? adult,
    String? mediaType,
    String? releaseDate,
    String? title,
  }) = _TopRatedTvModel;

  factory TopRatedTvModel.fromJson(Map<String, dynamic> json) =>
      _$TopRatedTvModelFromJson(json);
}
