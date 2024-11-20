import 'package:flutter/material.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Map<String, String>> _favorites = [];

  List<Map<String, String>> get favorites => _favorites;

  void addFavorite(String title, String description) {
    _favorites.add({"title": title, "description": description});
    notifyListeners();
  }

  void removeFavorite(String title) {
    _favorites.removeWhere((item) => item['title'] == title);
    notifyListeners();
  }
}
