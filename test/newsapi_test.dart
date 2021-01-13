import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:newsapi/model/response.dart';
import 'package:newsapi/newsapi.dart';

void main() {
  test('total results', () async {
    Response response = await fetchNews(http.Client());
    expect(response.totalResults, 70);
  });
}
