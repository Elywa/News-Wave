import 'package:flutter/material.dart';
import 'package:news_app2/components/news_list_view_builder.dart';
import 'package:news_app2/models/CategoryCardModel.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final CategoryCardModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            category.categoryName,
            style: const TextStyle(
                color: Colors.orange,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category.categoryName,
            )
          ],
        ));
  }
}
