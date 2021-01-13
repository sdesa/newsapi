import 'package:newsapi/model/article.dart';

class Response {
  final String status;
  final int totalResults;
  final List<Article> articles;

  Response({this.status, this.totalResults, this.articles});

  factory Response.fromJson(Map<String, dynamic> json) {
    var list = json['articles'] as List;
    print(list.runtimeType);
    List<Article> articles =
        list.map((article) => Article.fromJson(article)).toList();
    return Response(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: articles,
    );
  }
}
