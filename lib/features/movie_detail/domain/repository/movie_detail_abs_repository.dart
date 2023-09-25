import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information/movie_information_model.dart';

abstract class MovieDetailRepositoryAbstract {
  Future<MovieInformationModel> getMovieById(String id);
}
