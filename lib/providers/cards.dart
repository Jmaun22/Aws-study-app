import 'package:flutter/material.dart';

import 'card.dart';

class Cards with ChangeNotifier {
  List<FlashCard> _items = [
    FlashCard(
      id: 'p1',
      term: 'first',
      def: 'last',
    ),
    FlashCard(
      id: 'p2',
      term: 'second',
      def: '2',
    ),
  ];

  List<FlashCard> get items {
    return [..._items];
  }

// find by id
  FlashCard findById(String id) {
    return _items.firstWhere((card) => card.id == id);
  }

  // add a new flash card
  void addCard(FlashCard card) {
    final newCard = FlashCard(
        id: DateTime.now().toString(), term: card.term, def: card.def);

    _items.add(newCard);
    notifyListeners();
  }

// update a flash card
  void updateCard(String id, FlashCard newCard) {
    final cardIndex = _items.indexWhere((card) => card.id == id);

    if (cardIndex >= 0) {
      _items[cardIndex] = newCard;
      notifyListeners();
    } else {
      print('...');
    }
  }

  // delte a flash card

  void deleteCard(String id) {
    _items.removeWhere((card) => card.id == id);
    notifyListeners();
  }
}
