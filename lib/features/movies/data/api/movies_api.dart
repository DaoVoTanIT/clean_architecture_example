import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/movies/movies_model.dart';

class MoviesApi {
  final Dio dio;
  MoviesApi({required this.dio});
  Future<MoviesModel> getRecentMovies() async {
    dio.options = BaseOptions(baseUrl: 'https://moviedb.cyclic.app/api/v1');
    final res = await dio.get('/home');
    return MoviesModel.fromJson(res.data);
  }
}
