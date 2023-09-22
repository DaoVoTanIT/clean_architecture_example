part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  @override
  List<Object> get props => [];
}

class NewsInitialState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsGetRecentNewsSuccessState extends NewsState {
  final List<NewsModel> listNews;
  NewsGetRecentNewsSuccessState({required this.listNews});
  @override
  List<Object> get props => [listNews];
}

class NewsErrorState extends NewsState {
  final String message;
  NewsErrorState(this.message);

  @override
  List<Object> get props => [message];
}
