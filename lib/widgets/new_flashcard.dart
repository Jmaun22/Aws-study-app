import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class NewFlashCard extends StatefulWidget {

  final Function addTx;

  NewFlashCard(this.addTx);

  @override
  State<NewFlashCard> createState() => _NewFlashCardState();
}

class _NewFlashCardState extends State<NewFlashCard> {
  
  
  final termController = TextEditingController();

  final definationController = TextEditingController();



  void submitData() {
    if (termController.text.isEmpty) {
      return;
    }
    final enteredTerm = termController.text;

    final enteredDefination = definationController.text;
    if (enteredTerm.isEmpty || enteredDefination .isEmpty) {
      return;
    }
    widget.addTx(
      enteredTerm,
      enteredDefination,



    );

    Navigator.of(context).pop();
  }

  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Term'),
              controller: termController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            Container(
              height: 50,
            
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Defination'),
              controller: definationController,
              onSubmitted: (_) => submitData,
            ),
            FlatButton(
              onPressed: submitData,
              child: Text('Make Card'),
              textColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
