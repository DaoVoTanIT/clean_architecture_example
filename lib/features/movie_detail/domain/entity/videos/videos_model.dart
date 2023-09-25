import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/videos/videos_result_model.dart';

part 'videos_model.freezed.dart';
part 'videos_model.g.dart';

@freezed
class Videos with _$Videos {
  factory Videos({
    int? id,
    List<VideosResult>? results,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}
