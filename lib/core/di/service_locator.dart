import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_clean_architecture/core/network/network_client.dart';
import 'package:news_app_clean_architecture/core/shared/contants.dart';
import 'package:news_app_clean_architecture/features/movies/data/api/movies_api.dart';
import 'package:news_app_clean_architecture/features/movies/data/repository/movies_repository_impl.dart';
import 'package:news_app_clean_architecture/features/movies/domain/reposiory/movies_repository_abs.dart';
import 'package:news_app_clean_architecture/features/movies/domain/usecase/usecase.dart';
import 'package:news_app_clean_architecture/features/movies/screen/bloc/movies/bloc/movies_bloc.dart';
import 'package:news_app_clean_architecture/features/new/data/api/news_api.dart';
import 'package:news_app_clean_architecture/features/new/data/repository/new_repository_impl.dart';
import 'package:news_app_clean_architecture/features/new/domain/repository/news_repository_abs.dart';
import 'package:news_app_clean_architecture/features/new/domain/usecase/get_new_home_uc.dart';
import 'package:news_app_clean_architecture/features/new/presentation/bloc/news/bloc/news_bloc.dart';

final serviceLocator = GetIt.instance;

setupServiceLocator() async {
  serviceLocator.registerFactory<Constant>(() => Constant());
  serviceLocator.registerFactory<Dio>(
    () => NetworkClient(Dio(), constant: serviceLocator()).dio,
  );
  // News
  serviceLocator.registerFactory<NewsBloc>(() => NewsBloc());
  serviceLocator.registerLazySingleton<NewsApi>(() => NewsApi(
        dio: serviceLocator(),
      ));
  serviceLocator
      .registerLazySingleton<NewsRepositoryAbstract>(() => NewsRepositoryImpl(
            newsApi: serviceLocator(),
          ));
  serviceLocator.registerLazySingleton<GetNewsUseCase>(
      () => GetNewsUseCase(newsRepositoryAbstract: serviceLocator()));
  //Movies
  serviceLocator.registerFactory<MoviesBloc>(() => MoviesBloc());
  serviceLocator.registerLazySingleton<MoviesApi>(() => MoviesApi(
        dio: serviceLocator(),
      ));
  serviceLocator.registerLazySingleton<MoviesRepositoryAbstract>(
      () => MoviesRepositoryImpl(
            moviesApi: serviceLocator(),
          ));
  serviceLocator.registerLazySingleton<GetMoviesUseCase>(
      () => GetMoviesUseCase(moviesRepositoryAbstract: serviceLocator()));
}
