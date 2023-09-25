import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/now_playing_movie/now_playing_movie_model.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/top_rated_tv/top_rated_tv_model.dart';

import 'movie_card.dart';

class HorizontalListViewMovies extends StatelessWidget {
  final List<NowPlayingMovieModel> list;
  final Color? color;
  const HorizontalListViewMovies({
    Key? key,
    required this.list,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 310,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 7),
            for (var i = 0; i < list.length; i++)
              MovieCard(
                isMovie: true,
                id: list[i].id.toString(),
                name: list[i].title ?? '',
                backdrop: list[i].backdropPath ?? '',
                poster: list[i].backdropPath ?? '',
                color: color == null ? Colors.white : color!,
                date: list[i].releaseDate == null
                    ? ''
                    : list[i].releaseDate!.toLocal().toIso8601String(),
                onTap: () {
                  // pushNewScreen(
                  //   context,
                  //   MovieDetailsScreen(
                  //     id: list[i].id,
                  //     backdrop: list[i].backdrop,
                  //   ),
                  // );
                },
              )
          ],
        ));
  }
}

class HorizontalListViewTv extends StatelessWidget {
  final List<TopRatedTvModel> list;
  final Color? color;

  const HorizontalListViewTv({
    Key? key,
    required this.list,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 310,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 7),
            for (var i = 0; i < list.length; i++)
              MovieCard(
                isMovie: true,
                id: list[i].id.toString(),
                name: list[i].title ?? '',
                backdrop: list[i].backdropPath ?? '',
                poster: list[i].backdropPath ?? '',
                color: color == null ? Colors.white : color!,
                date: list[i].releaseDate ?? DateTime.now().toIso8601String(),
                onTap: () {
                  // pushNewScreen(
                  //   context,
                  //   TvShowDetailScreen(
                  //     backdrop: list[i].backdrop,
                  //     id: list[i].id,
                  //   ),
                  // );
                },
              )
          ],
        ));
  }
}
