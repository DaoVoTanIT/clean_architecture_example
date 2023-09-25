import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/credits/credits_model.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/image/images_model.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information_db/movie_information_db.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/videos/videos_model.dart';
part 'movie_information_model.freezed.dart';
part 'movie_information_model.g.dart';

@freezed
class MovieInformationModel with _$MovieInformationModel {
  factory MovieInformationModel({
    MovieInformationDb? data,
    Videos? videos,
    ImagesModel? images,
    CreditsModel? credits,
    //Similar? similar,
  }) = _MovieInformationModel;

  factory MovieInformationModel.fromJson(Map<String, dynamic> json) =>
      _$MovieInformationModelFromJson(json);
}
