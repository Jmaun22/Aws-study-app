import 'package:flutter/material.dart';

class FlashCard with ChangeNotifier {
  final String id;
  final String term;
  final String def;
  bool isCorrect;

  FlashCard(
      {required this.id,
      required this.term,
      required this.def,
      this.isCorrect = false});

  void toggleCorrectStatus() {
    isCorrect = !isCorrect;
    notifyListeners();
  }
}
