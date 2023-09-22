import 'package:news_app_clean_architecture/features/movies/domain/entity/movies/movies_model.dart';
import 'package:news_app_clean_architecture/features/movies/domain/reposiory/movies_repository_abs.dart';

class GetMoviesUseCase {
  final MoviesRepositoryAbstract moviesRepositoryAbstract;
  GetMoviesUseCase({required this.moviesRepositoryAbstract});
  Future<MoviesModel> getMovies() async {
    return moviesRepositoryAbstract.getAllMovies();
  }
}
