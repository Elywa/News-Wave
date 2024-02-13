import 'package:flutter/material.dart';
import 'package:news_app2/components/NewsTile.dart';
import 'package:news_app2/models/article_model.dart';

class NewsTileListView extends StatelessWidget {
  List<ArticleModel> articles = [];
  NewsTileListView({required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => NewsTile(model: articles[index]),
      ),
    );
  }
}








