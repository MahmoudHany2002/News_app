import 'package:dio/dio.dart';
import 'package:neapp/model/article_model.dart';

class NewsService {
final Dio dio;

  NewsService(this.dio);

 Future<List<ArticleModel>> getNews({required String category}) async {
    var response =await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=5d817b68189a48e9894672686620df5c&category=$category');

    Map<String , dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"] ;
    List<ArticleModel> articleList= [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article["urlToImage"],
        title: article["title"],
        subtitle: article["description"],
          );
      articleList.add(articleModel);
    }

   return  articleList;
  
    
  } 

}