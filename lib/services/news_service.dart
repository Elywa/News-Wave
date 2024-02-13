import 'package:dio/dio.dart';
import 'package:news_app2/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=85d5590c8e9e49c8aaa2e1d995aab8d3&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel model = ArticleModel.fromJson(article);
        articlesList.add(model);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
