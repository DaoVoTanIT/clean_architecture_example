import 'package:news_app_clean_architecture/features/new/domain/entity/news_model.dart';
import 'package:news_app_clean_architecture/features/new/domain/repository/news_repository_abs.dart';

class GetNewsUseCase {
  final NewsRepositoryAbstract newsRepositoryAbstract;
  GetNewsUseCase({required this.newsRepositoryAbstract});
  Future<List<NewsModel>> getNews() async {
    return newsRepositoryAbstract.getNews();
  }
}
