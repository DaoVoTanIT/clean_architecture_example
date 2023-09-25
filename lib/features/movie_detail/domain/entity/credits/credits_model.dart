import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/credits/cast_model.dart';
part 'credits_model.freezed.dart';
part 'credits_model.g.dart';

@freezed
class CreditsModel with _$CreditsModel {
  factory CreditsModel({
    int? id,
    List<CastModel>? cast,
    List<CastModel>? crew,
  }) = _CreditsModel;

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);
}
