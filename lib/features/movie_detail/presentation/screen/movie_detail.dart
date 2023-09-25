import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/features/movie_detail/presentation/bloc/bloc/movie_detail_bloc.dart';
import 'package:news_app_clean_architecture/features/movie_detail/presentation/widget/movie_detail_widget.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key, required this.id});
  final String id;
  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late MovieDetailBloc movieDetailBloc;
  @override
  void initState() {
    movieDetailBloc = BlocProvider.of<MovieDetailBloc>(context);
    movieDetailBloc.add(GetMoviesEvent(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          if (state is MovieDetailLoadingState) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.grey.shade700,
                  strokeWidth: 2,
                  backgroundColor: Colors.cyanAccent,
                ),
              ),
            );
          }
          if (state is MovieDetailByIdSuccessState) {
            return MovieDetailWidget(
              info: state.movieInformationModel.data!,
            );
          }
          if (state is MovieDetailErrorState) {
            return Container();
          }
          return Container();
        },
      ),
    );
  }
}
