import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cards.dart';
 
 class ProductGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final cardData = Provider.of<Cards>(context);

    final cards = cardData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0), 
      itemCount: cards.length, 
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(

        value: cards[i], 
        child:  CardItem(  
         cards[i].id, 
         cards[i].term, 
          cards[i].def), 
        ), 

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
          crossAxisCount: 2, 
          childAspectRatio: 3 / 2, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
        ),



      );

  }
}