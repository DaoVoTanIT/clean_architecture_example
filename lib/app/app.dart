import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/app/routes.dart';
import 'package:news_app_clean_architecture/app/themes.dart';
import 'package:news_app_clean_architecture/features/movies/screen/bloc/movies/bloc/movies_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => MoviesBloc(),
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
