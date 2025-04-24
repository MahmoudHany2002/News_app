
import 'package:flutter/material.dart';
import 'package:neapp/model/category_model.dart';
import 'package:neapp/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/designer-work-office.jpg',
      categoryName: ' Business',
    ),
    CategoryModel(
      image: 'assets/close-up-recording-video-with-smartphone-concert.jpg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/healthy-food-right-medicine-flu.jpg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/chemistry-class-elements-with-copy-space.jpg',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/3d-render-techno-background-with-male-figure-coding-design.jpg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/truth-concept-arrangement-with-different-elements.jpg',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
