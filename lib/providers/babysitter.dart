import 'package:flutter/material.dart';

class BabySitter with ChangeNotifier {
  final String firstName;
  final String lastName;
  final String location;
  final String gender;
  final String id;
  final String rating;
  final List<Map<String, String>> reviews;
  final String description;
  final List<String> imageUrl;
  final List<Map<String, double>> pricing;
  bool isFavorite;

  BabySitter({
    required this.firstName,
    required this.gender,
    required this.lastName,
    required this.location,
    required this.id,
    required this.description,
    required this.rating,
    required this.imageUrl,
    required this.reviews,
    required this.pricing,
    this.isFavorite = false,
  });

  void togglefavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
