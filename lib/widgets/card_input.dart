import 'package:aws_study/models/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/flashcard.dart';


class CardInput extends StatelessWidget {
  late final List<FlashCard> flashcards;

  CardInput(this.flashcards);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: flashcards.isEmpty
            ? Column(children: <Widget>[
                Text('No Flashcards added yet!'),
                SizedBox(
                  height: 25,
                  width: 15,
                ),
                Container(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ))
              ])
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 7,
                    child: Column(children: <Widget>[
                      TextFormField(
                            decoration: const InputDecoration(

    hintText: 'Type a term',
    labelText: 'Term',
  ),

                        initialValue: flashcards[index].term
                
),
 TextFormField(
  decoration: const InputDecoration(

    hintText: 'Type a def',
    labelText: 'Definition',
  ),
                        initialValue: flashcards[index].def
                
),


                    
                  
                    
                    ]),
                  );
                },
                itemCount: flashcards.length,
              ));
  }
}
