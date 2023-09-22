import 'package:news_app_clean_architecture/features/movies/domain/entity/movies/movies_model.dart';

abstract class MoviesRepositoryAbstract {
  Future<MoviesModel> getAllMovies();
}
