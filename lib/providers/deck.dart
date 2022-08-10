import 'package:flutter/material.dart';

class Deck with ChangeNotifier {
  final String id;
  final String title;
  final String description;

  Deck({
    required this.id,
    required this.title,
    required this.description,
  });


}
