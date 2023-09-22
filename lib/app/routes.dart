import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app_clean_architecture/core/di/service_locator.dart';
import 'package:news_app_clean_architecture/features/home/home.dart';
import 'package:news_app_clean_architecture/features/movies/screen/bloc/movies/bloc/movies_bloc.dart';
import 'package:news_app_clean_architecture/features/movies/screen/movies.dart';
import 'package:news_app_clean_architecture/features/new/presentation/bloc/news/bloc/news_bloc.dart';

class AppRouter {
  GoRouter generateRoute() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider.value(
            value: serviceLocator<NewsBloc>()..add(GetNewsEvent()),
            child: const HomePage(),
          );
        },
      ),
    ]);
  }
}
