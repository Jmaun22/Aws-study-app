import 'package:flutter/material.dart';
import '../providers/card.dart';

import 'package:provider/provider.dart';

class CardItem extends StatelessWidget {
  final String id;
  final String term;
  final String def;

  CardItem(this.id, this.term, this.def);

  @override
  Widget build(BuildContext context) {
    final card = Provider.of<Card>(context, listen: false);
    return ClipRRect();
  }
}
