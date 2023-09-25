import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_clean_architecture/core/di/service_locator.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information/movie_information_model.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/usecase/movie_detail_usecase.dart';
part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  MovieDetailBloc() : super(MovieDetailInitialState()) {
    on<GetMoviesEvent>((event, emit) async {
      try {
        emit(MovieDetailLoadingState());
        var movieDetail =
            await serviceLocator<MovieDetailUseCase>().getMovieById(event.id);
        emit(MovieDetailByIdSuccessState(movieInformationModel: movieDetail));
      } catch (e) {
        print(e.toString());
        emit(MovieDetailErrorState(e.toString()));
      }
    });
  }
}
