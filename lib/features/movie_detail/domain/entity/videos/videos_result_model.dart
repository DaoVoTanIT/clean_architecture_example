import 'package:freezed_annotation/freezed_annotation.dart';

part 'videos_result_model.freezed.dart';
part 'videos_result_model.g.dart';

@freezed
class VideosResult with _$VideosResult {
  factory VideosResult({
    String? iso6391,
    String? iso31661,
    String? name,
    String? key,
    String? site,
    int? size,
    String? type,
    bool? official,
    DateTime? publishedAt,
    String? id,
  }) = _VideosResult;

  factory VideosResult.fromJson(Map<String, dynamic> json) =>
      _$VideosResultFromJson(json);
}
