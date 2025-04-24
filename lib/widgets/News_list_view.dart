
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:neapp/model/article_model.dart';
import 'package:neapp/service/news_service.dart';
import 'package:neapp/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key, required this.category,
  });
final String category ;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
List<ArticleModel> articles = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    
    articles = await NewsService(Dio()).getNews(category: widget.category);
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {

    return 
     SliverList(
              delegate:SliverChildBuilderDelegate(
                childCount: articles.length,
                (context , index ){
              return NewsTile(
                articleModel: articles[index],
              );
            }),);
  }
}
