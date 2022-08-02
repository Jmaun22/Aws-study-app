import 'package:aws_study/models/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/flashcard.dart';
import 'package:uuid/uuid.dart';


class CardInput extends StatelessWidget {
  late final List<FlashCard> flashcards;

  CardInput(this.flashcards);
   var uuid = Uuid();

  // Generate a v1 (time-based) id
  late var v1 = uuid.v1();

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
                  // adding so that you can swipe to delete the cards
                  return Dismissible(
                    key: ValueKey(v1),
                    background: Container(  
                      color: Theme.of(context).errorColor, 
                      child: Icon(  
                        Icons.delete,  
                        color: Colors.white, 
                        size: 50,
                      ), 
                      alignment: Alignment.centerRight,  
                      padding: EdgeInsets.only(right: 20),  
                      margin: EdgeInsets.symmetric(  
                        horizontal: 15, 
                        vertical: 4,
                      ),
                    ), 
                    direction: DismissDirection.endToStart,

                    // need to add provider here when I make a flash card provider
                    child: Card(
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
                    ),
                  );
                },
                itemCount: flashcards.length,
              ));
  }
}
