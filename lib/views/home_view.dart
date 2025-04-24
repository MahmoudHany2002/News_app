
import 'package:flutter/material.dart';
import 'package:neapp/widgets/News_list_view.dart';
import 'package:neapp/widgets/categories_list_view.dart';
import 'package:neapp/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Color.fromARGB(255, 18, 92, 167)),
            ),
          ],
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child:CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(
              height: 32,
            ),),
            NewsListView(
              category: 'general',
            ),
          ],
        ),
        
      ),
       
    );
  }
}
