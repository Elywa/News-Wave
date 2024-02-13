class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final String  url; 
  ArticleModel(
      {required this.description, required this.image, required this.title , required this.url});
  factory ArticleModel.fromJson(json)
  {
    return ArticleModel(
            description: json['description'],
            image: json['urlToImage'],
            title: json['title'],
            url: json['url']);
       
  }
}
