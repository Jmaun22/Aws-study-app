import 'package:aws_study/models/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/card_input.dart';
import '../models/flashcard.dart';
import '../widgets/new_flashcard.dart';

class Input extends StatefulWidget {
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final List<FlashCard> _flashcards = [
    FlashCard(id: '1', term: 'super', def: 'amazing')
    // Transaction(
    //   id: 't1',
    //   title: 'New Shoes',
    //   amount: 69.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't2',
    //   title: 'Weekly Grocreis',
    //   amount: 16.53,
    //   date: DateTime.now(),
    // )
  ];

  void _addNewFlashcard(
    String txTerm,
    String txDef,
  ) {
    final newTx =
        FlashCard(id: DateTime.now().toString(), term: txTerm, def: txDef);

    setState(() {
      _flashcards.add(newTx);
    });
  }

  void _startAddAnotherFlashcard(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewFlashCard(_addNewFlashcard),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AWS STUDY'),
        ),
        backgroundColor: Colors.blue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Create a Set'),
            CardInput(_flashcards),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.red,
          focusColor: Colors.red,
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          onPressed: () => _startAddAnotherFlashcard(context),
        ),
      ),
    );
  }
}
