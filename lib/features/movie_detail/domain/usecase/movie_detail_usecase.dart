import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information/movie_information_model.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/repository/movie_detail_abs_repository.dart';

class MovieDetailUseCase {
  final MovieDetailRepositoryAbstract movieDetailRepositoryAbstract;

  MovieDetailUseCase({required this.movieDetailRepositoryAbstract});
  Future<MovieInformationModel> getMovieById(String id) {
    return movieDetailRepositoryAbstract.getMovieById(id);
  }
}
