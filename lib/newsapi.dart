library newsapi;

import 'dart:convert';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:newsapi/model/response.dart';

/// Fetches news from NewsAPI.org
Future<Response> fetchNews(http.Client client) async {
  const String uri =
      "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=10db23ab8f3248e9a6cd87d3d75e5cae";
  final response = await client.get(uri);
  return compute(parseResponse, response.body);
}

Response parseResponse(String responseBody) {
  final jsonResponse = json.decode(responseBody);
  return Response.fromJson(jsonResponse);
}
