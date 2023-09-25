import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/app/routes.dart';
import 'package:news_app_clean_architecture/app/themes.dart';
import 'package:news_app_clean_architecture/features/movie_detail/presentation/bloc/bloc/movie_detail_bloc.dart';
import 'package:news_app_clean_architecture/features/movies/presentation/bloc/movies/bloc/movies_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => MoviesBloc(),
        ),
        BlocProvider(
          create: (_) => MovieDetailBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.themeData,
        routerConfig: AppRouter().generateRoute(),
      ),
    );
  }
}
