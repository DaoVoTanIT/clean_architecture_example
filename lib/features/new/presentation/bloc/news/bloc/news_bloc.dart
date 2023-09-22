import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_clean_architecture/core/di/service_locator.dart';
import 'package:news_app_clean_architecture/features/new/domain/entity/news_model.dart';
import 'package:news_app_clean_architecture/features/new/domain/usecase/get_new_home_uc.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitialState()) {
    on<GetNewsEvent>((event, emit) async {
      try {
        emit(NewsLoadingState());
        var listNews = await serviceLocator<GetNewsUseCase>().getNews();
        emit(NewsGetRecentNewsSuccessState(listNews: listNews));
      } catch (e) {
        print(e.toString());
        emit(NewsErrorState(e.toString()));
      }
    });
  }
}
