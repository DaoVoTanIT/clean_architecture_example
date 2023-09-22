// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_tv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopRatedTvModel _$$_TopRatedTvModelFromJson(Map<String, dynamic> json) =>
    _$_TopRatedTvModel(
      backdropPath: json['backdrop_path'] != null
          ? "https://image.tmdb.org/t/p/original" + json['backdrop_path']
          : "https://images.pexels.com/photos/4089658/pexels-photo-4089658.jpeg?cs=srgb&dl=pexels-victoria-borodinova-4089658.jpg&fm=jpg",
      posterPath: json['poster_path'] != null
          ? "https://image.tmdb.org/t/p/w500" + json['poster_path']
          : "https://images.pexels.com/photos/4089658/pexels-photo-4089658.jpeg?cs=srgb&dl=pexels-victoria-borodinova-4089658.jpg&fm=jpg",
      firstAirDate: json["first_air_date"] == null
          ? null
          : DateTime.parse(json["first_air_date"]),
      genreIds: json["genre_ids"] == null
          ? []
          : List<int>.from(json["genre_ids"].map((x) => x)),
      id: json["id"],
      name: json["name"],
      originCountry: json["origin_country"] == null
          ? []
          : List<String>.from(json["origin_country"].map((x) => x)),
      originalLanguage: json["original_language"],
      originalName: json["original_name"],
      overview: json["overview"],
      popularity: json["popularity"]?.toDouble(),
      voteAverage: json["vote_average"]?.toDouble(),
      voteCount: json["vote_count"],
      adult: json["adult"],
      mediaType: json["media_type"],
      title: json['name'],
      releaseDate: json['release_date'],
    );

Map<String, dynamic> _$$_TopRatedTvModelToJson(_$_TopRatedTvModel instance) =>
    <String, dynamic>{
      "backdrop_path": instance.backdropPath,
      "first_air_date":
          "${instance.firstAirDate?.year.toString().padLeft(4, '0')}-${instance.firstAirDate?.month.toString().padLeft(2, '0')}-${instance.firstAirDate?.day.toString().padLeft(2, '0')}",
      "genre_ids": instance.genreIds == null
          ? []
          : List<dynamic>.from(instance.genreIds!.map((x) => x)),
      "id": instance.id,
      "name": instance.name,
      "origin_country": instance.originCountry == null
          ? []
          : List<dynamic>.from(instance.originCountry!.map((x) => x)),
      "original_language": instance.originalLanguage,
      "original_name": instance.originalName,
      "overview": instance.overview,
      "popularity": instance.popularity,
      "poster_path": instance.posterPath,
      "vote_average": instance.voteAverage,
      "vote_count": instance.voteCount,
      "adult": instance.adult,
      "media_type": instance.mediaType,
    };
