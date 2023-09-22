// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NowPlayingMovieModel _$$_NowPlayingMovieModelFromJson(
        Map<String, dynamic> json) =>
    _$_NowPlayingMovieModel(
      adult: json["adult"],
      backdropPath: json['backdrop_path'] != null
          ? "https://image.tmdb.org/t/p/w500" + json['backdrop_path']
          : "https://images.pexels.com/photos/4089658/pexels-photo-4089658.jpeg?cs=srgb&dl=pexels-victoria-borodinova-4089658.jpg&fm=jpg",
      posterPath: json['poster_path'] != null
          ? "https://image.tmdb.org/t/p/w500" + json['poster_path']
          : "https://images.pexels.com/photos/4089658/pexels-photo-4089658.jpeg?cs=srgb&dl=pexels-victoria-borodinova-4089658.jpg&fm=jpg",
      genreIds: json["genre_ids"] == null
          ? []
          : List<int>.from(json["genre_ids"].map((x) => x)),
      id: json["id"],
      originalLanguage: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      popularity: json["popularity"]?.toDouble(),
      releaseDate: json["release_date"] == null
          ? null
          : DateTime.parse(json["release_date"]),
      title: json["title"],
      video: json["video"],
      voteAverage: json["vote_average"]?.toDouble(),
      voteCount: json["vote_count"],
      mediaType: json["media_type"],
    );

Map<String, dynamic> _$$_NowPlayingMovieModelToJson(
        _$_NowPlayingMovieModel instance) =>
    <String, dynamic>{
      "adult": instance.adult,
      "backdrop_path": instance.backdropPath,
      "genre_ids": instance.genreIds == null
          ? []
          : List<dynamic>.from(instance.genreIds!.map((x) => x)),
      "id": instance.id,
      "original_language": instance.originalLanguage,
      "original_title": instance.originalTitle,
      "overview": instance.overview,
      "popularity": instance.popularity,
      "poster_path": instance.posterPath,
      "release_date":
          "${instance.releaseDate?.year.toString().padLeft(4, '0')}-${instance.releaseDate?.month.toString().padLeft(2, '0')}-${instance.releaseDate?.day.toString().padLeft(2, '0')}",
      "title": instance.title,
      "video": instance.video,
      "vote_average": instance.voteAverage,
      "vote_count": instance.voteCount,
      "media_type": instance.mediaType,
    };
