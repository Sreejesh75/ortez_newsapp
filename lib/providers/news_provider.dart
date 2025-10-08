import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ortez_test/models/article.dart';

class NewsProvider with ChangeNotifier {
  List<Article> _articles = [];
  bool _isLoading = false;
  int _page = 1;
  String _query = '';
  final int _pageSize = 10;

  List<Article> get articles => _articles;
  bool get isLoading => _isLoading;

  Future<void> fetchNews({bool refresh = false}) async {
    if (refresh) {
      _page = 1;
      _articles.clear();
      notifyListeners();
    }

    _isLoading = true;
    notifyListeners();

    const apiKey = '3c908d66c17e479980705eaf3ffff95a';
    // final baseUrl = 'https://newsapi.org/v2/top-headlines';
    final url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&page=$_page&pageSize=$_pageSize&apiKey=$apiKey${_query.isNotEmpty ? '&q=$_query' : ''}',
    );

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articlesJson = data['articles'] ?? [];
      final newArticles = articlesJson.map((e) => Article.fromJson(e)).toList();
      _articles.addAll(newArticles.cast<Article>());
      _page++;
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> searchNews(String query) async {
    _query = query;
    _page = 1;
    _articles.clear();
    await fetchNews();
  }
}
