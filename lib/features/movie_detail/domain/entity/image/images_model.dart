import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_model.freezed.dart';
part 'images_model.g.dart';

@freezed
class ImagesModel with _$ImagesModel {
  factory ImagesModel({
    List<Backdrop>? backdrops,
    int? id,
    List<Backdrop>? logos,
    List<Backdrop>? posters,
  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);
}

@freezed
class Backdrop with _$Backdrop {
  factory Backdrop({
    double? aspectRatio,
    int? height,
    String? iso6391,
    String? filePath,
    double? voteAverage,
    int? voteCount,
    int? width,
  }) = _Backdrop;

  factory Backdrop.fromJson(Map<String, dynamic> json) =>
      _$BackdropFromJson(json);
}
