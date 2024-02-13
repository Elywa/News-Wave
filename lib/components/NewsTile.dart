import 'package:flutter/material.dart';
import 'package:news_app2/models/article_model.dart';
import 'package:news_app2/views/web_view_controller.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.model});
  ArticleModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WebViewConatiner(model: model);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff454545),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: model.image != null
                      ? Image.network(
                          model.image!,
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 200,
                        )
                      : Image.asset(
                          'assets/newspaper-black-and-white-recording-wallpapper.jpg',
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 200,
                        ),
                ),
                Text(
                  model.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  model.description ?? 'No Description',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
