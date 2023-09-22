import 'package:news_app_clean_architecture/features/new/domain/entity/news_model.dart';

abstract class NewsRepositoryAbstract {
  Future<List<NewsModel>> getNews();
}
