import 'package:news_app_clean_architecture/features/new/data/api/news_api.dart';
import 'package:news_app_clean_architecture/features/new/domain/entity/news_model.dart';
import 'package:news_app_clean_architecture/features/new/domain/repository/news_repository_abs.dart';

class NewsRepositoryImpl extends NewsRepositoryAbstract {
  final NewsApi newsApi;

  NewsRepositoryImpl({required this.newsApi});
  @override
  Future<List<NewsModel>> getNews() {
    return newsApi.getRecentNews();
  }
}
