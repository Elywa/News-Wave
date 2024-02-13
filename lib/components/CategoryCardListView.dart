import 'package:flutter/material.dart';
import 'package:news_app2/components/CategoryCard.dart';
import 'package:news_app2/models/CategoryCardModel.dart';

class CategoryCardListView extends StatelessWidget {
  CategoryCardListView({super.key});
  List<CategoryCardModel> models = [
    CategoryCardModel(
        categoryImage: 'assets/bussiness.jpeg', categoryName: 'Business'),
    CategoryCardModel(
        categoryImage: 'assets/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryCardModel(
        categoryImage: 'assets/general.avif', categoryName: 'General'),
    CategoryCardModel(
        categoryImage: 'assets/health.avif', categoryName: 'Health'),
    CategoryCardModel(
        categoryImage: 'assets/science.avif', categoryName: 'Science'),
    CategoryCardModel(
        categoryImage: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryCardModel(
        categoryImage: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SizedBox(
          height: 120,
          child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: models.length,
              itemBuilder: (context, index) {
                return CategoryCard(model: models[index]);
              }),
        ),
      ),
    );
  }
}
