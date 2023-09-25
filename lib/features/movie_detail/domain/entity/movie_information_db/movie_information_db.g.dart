// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_information_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieInformationDb _$$_MovieInformationDbFromJson(
        Map<String, dynamic> json) =>
    _$_MovieInformationDb(
      adult: json["adult"],
      backdropPath: json["backdrop_path"],
      belongsToCollection: json["belongs_to_collection"],
      budget: json["budget"],
      genres: json["genres"] == null
          ? []
          : List<Genre>.from(json["genres"]!.map((x) => Genre.fromJson(x))),
      homepage: json["homepage"],
      id: json["id"],
      imdbId: json["imdb_id"],
      originalLanguage: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      popularity: json["popularity"]?.toDouble(),
      posterPath: json["poster_path"],
      productionCompanies: json["production_companies"] == null
          ? []
          : List<ProductionCompany>.from(json["production_companies"]!
              .map((x) => ProductionCompany.fromJson(x))),
      productionCountries: json["production_countries"] == null
          ? []
          : List<ProductionCountry>.from(json["production_countries"]!
              .map((x) => ProductionCountry.fromJson(x))),
      releaseDate: json["release_date"] == null
          ? null
          : DateTime.parse(json["release_date"]),
      revenue: json["revenue"],
      runtime: json["runtime"],
      spokenLanguages: json["spoken_languages"] == null
          ? []
          : List<SpokenLanguage>.from(
              json["spoken_languages"]!.map((x) => SpokenLanguage.fromJson(x))),
      status: json["status"],
      tagline: json["tagline"],
      title: json["title"],
      video: json["video"],
      voteAverage: json["vote_average"]?.toDouble(),
      voteCount: json["vote_count"],
    );

Map<String, dynamic> _$$_MovieInformationDbToJson(
        _$_MovieInformationDb instance) =>
    <String, dynamic>{
      "adult": instance.adult,
      "backdrop_path": instance.backdropPath,
      "belongs_to_collection": instance.belongsToCollection,
      "budget": instance.budget,
      "genres": instance.genres == null
          ? []
          : List<dynamic>.from(instance.genres!.map((x) => x.toJson())),
      "homepage": instance.homepage,
      "id": instance.id,
      "imdb_id": instance.imdbId,
      "original_language": instance.originalLanguage,
      "original_title": instance.originalTitle,
      "overview": instance.overview,
      "popularity": instance.popularity,
      "poster_path": instance.posterPath,
      "production_companies": instance.productionCompanies == null
          ? []
          : List<dynamic>.from(
              instance.productionCompanies!.map((x) => x.toJson())),
      "production_countries": instance.productionCountries == null
          ? []
          : List<dynamic>.from(
              instance.productionCountries!.map((x) => x.toJson())),
      "release_date":
          "${instance.releaseDate!.year.toString().padLeft(4, '0')}-${instance.releaseDate!.month.toString().padLeft(2, '0')}-${instance.releaseDate!.day.toString().padLeft(2, '0')}",
      "revenue": instance.revenue,
      "runtime": instance.runtime,
      "spoken_languages": instance.spokenLanguages == null
          ? []
          : List<dynamic>.from(
              instance.spokenLanguages!.map((x) => x.toJson())),
      "status": instance.status,
      "tagline": instance.tagline,
      "title": instance.title,
      "video": instance.video,
      "vote_average": instance.voteAverage,
      "vote_count": instance.voteCount,
    };

_$_Genre _$$_GenreFromJson(Map<String, dynamic> json) => _$_Genre(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GenreToJson(_$_Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ProductionCompany _$$_ProductionCompanyFromJson(Map<String, dynamic> json) =>
    _$_ProductionCompany(
      id: json['id'] as int?,
      logoPath: json['logoPath'] as String?,
      name: json['name'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$$_ProductionCompanyToJson(
        _$_ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };

_$_ProductionCountry _$$_ProductionCountryFromJson(Map<String, dynamic> json) =>
    _$_ProductionCountry(
      iso31661: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ProductionCountryToJson(
        _$_ProductionCountry instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
    };

_$_SpokenLanguage _$$_SpokenLanguageFromJson(Map<String, dynamic> json) =>
    _$_SpokenLanguage(
      englishName: json['english_name'] as String?,
      iso6391: json['iso_639_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SpokenLanguageToJson(_$_SpokenLanguage instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso_639_1': instance.iso6391,
      'name': instance.name,
    };
