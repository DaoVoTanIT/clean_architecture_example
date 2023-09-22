import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/features/new/domain/entity/news_model.dart';

class NewsApi {
  final Dio dio;

  NewsApi({required this.dio});
  Future<List<NewsModel>> getRecentNews() async {
    dio.options = BaseOptions(baseUrl: 'https://newsapi.org');
    final res = await dio.get(
        '/v2/everything?q=vn&sortBy=publishedAt&apiKey=8ed1d03cd6734c9a9f363b110ded9842');
    return List<Map<String, dynamic>>.from(res.data['articles'])
        .map((e) => NewsModel.fromJson(e))
        .toList();
  }
}
