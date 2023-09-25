import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/common/util/animation.dart';
import 'package:news_app_clean_architecture/common/util/header_text.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/now_playing_movie/now_playing_movie_model.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/top_rated_tv/top_rated_tv_model.dart';
import 'package:news_app_clean_architecture/features/movies/presentation/bloc/movies/bloc/movies_bloc.dart';
import 'package:news_app_clean_architecture/features/movies/presentation/widget/horizontal_list_card.dart';
import 'package:news_app_clean_architecture/features/movies/presentation/widget/movie_widget.dart';

class MoviesHomePage extends StatefulWidget {
  const MoviesHomePage({Key? key}) : super(key: key);
  @override
  MoviesHomePageState createState() => MoviesHomePageState();
}

class MoviesHomePageState extends State<MoviesHomePage> {
  late MoviesBloc moviesBloc;
  @override
  void initState() {
    moviesBloc = BlocProvider.of<MoviesBloc>(context);
    moviesBloc.add(GetMoviesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        if (state is GetAllMoviesSuccessState) {
          return MoviesHomePageWidget(
            topRated: state.listMovies.topRatedMovies ?? [],
            topShows: state.listMovies.topRatedTv ?? [],
            nowPlaying: state.listMovies.nowPlayingMovieModels ?? [],
            tvShows: state.listMovies.topRatedTv ?? [],
            tranding: state.listMovies.trandingMovies ?? [],
            upcoming: state.listMovies.upcoming ?? [],
          );
        } else if (state is MoviesErrorState) {
          return Container();
        } else if (state is MoviesLoadingState) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Colors.grey.shade700,
                strokeWidth: 2,
                // backgroundColor: Colors.cyanAccent,
              ),
            ),
          );
        }
        return const Scaffold();
      },
    );
  }
}

class MoviesHomePageWidget extends StatelessWidget {
  final List<NowPlayingMovieModel> tranding;
  final List<NowPlayingMovieModel> topRated;
  final List<TopRatedTvModel> tvShows;
  final List<TopRatedTvModel> topShows;
  final List<NowPlayingMovieModel> upcoming;
  final List<NowPlayingMovieModel> nowPlaying;
  const MoviesHomePageWidget({
    Key? key,
    required this.tranding,
    required this.topRated,
    required this.tvShows,
    required this.topShows,
    required this.upcoming,
    required this.nowPlaying,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MoviesPage(movies: tranding),
              const DelayedDisplay(
                  delay: Duration(microseconds: 800),
                  child: HeaderText(text: "In Theaters")),
              DelayedDisplay(
                delay: const Duration(microseconds: 800),
                child: HorizontalListViewMovies(
                  list: tranding,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const HeaderText(text: "Tv shows"),
              HorizontalListViewTv(
                list: tvShows,
              ),
              const SizedBox(
                height: 14,
              ),
              const HeaderText(text: "Top Rated"),
              HorizontalListViewMovies(
                list: topRated,
              ),
              const SizedBox(
                height: 14,
              ),
              const HeaderText(text: "Top rated Tv shows"),
              HorizontalListViewTv(
                list: topShows,
              ),
              const SizedBox(
                height: 14,
              ),
              const HeaderText(text: "Upcoming"),
              HorizontalListViewMovies(
                list: upcoming,
              ),
              const SizedBox(
                height: 14,
              ),
              const HeaderText(text: "Now playing"),
              HorizontalListViewMovies(
                list: nowPlaying,
              )
            ],
          ),
        ),
      ),
    );
  }
}
