import 'package:news_app_clean_architecture/features/movies/data/api/movies_api.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/movies/movies_model.dart';
import 'package:news_app_clean_architecture/features/movies/domain/reposiory/movies_repository_abs.dart';

class MoviesRepositoryImpl extends MoviesRepositoryAbstract {
  final MoviesApi moviesApi;

  MoviesRepositoryImpl({required this.moviesApi});

  @override
  Future<MoviesModel> getAllMovies() {
    return moviesApi.getRecentMovies();
  }
}
