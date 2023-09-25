import 'package:news_app_clean_architecture/features/movie_detail/data/api/movie_detail_api.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information/movie_information_model.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/repository/movie_detail_abs_repository.dart';

class MovieRepositoryImpl extends MovieDetailRepositoryAbstract {
  final MovieDetailApi movieDetailApi;

  MovieRepositoryImpl({required this.movieDetailApi});
  @override
  Future<MovieInformationModel> getMovieById(String id) {
    return movieDetailApi.getMovieById(id);
  }
}
