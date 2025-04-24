import 'package:flutter/material.dart';
import 'package:neapp/widgets/News_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListView(
            category: category,
          )
        ],
      ),
    );
  }
}