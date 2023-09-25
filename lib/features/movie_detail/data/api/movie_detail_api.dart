import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information/movie_information_model.dart';

class MovieDetailApi {
  final Dio dio;

  MovieDetailApi({required this.dio});

  Future<MovieInformationModel> getMovieById(String id) async {
    dio.options = BaseOptions(baseUrl: 'https://moviedb.cyclic.app/api/v1');
    final res = await dio.get('/movie/$id');
    return MovieInformationModel.fromJson(res.data);
  }
}
