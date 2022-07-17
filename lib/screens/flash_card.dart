import 'package:flutter/material.dart';

import 'package:tcard/tcard.dart';
import 'package:flash_card/flash_card.dart';
import '../models/quiz_logic.dart';

QuizLogic quizLogic = QuizLogic();

List<Color> colors = [
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.orange,
  Colors.pink,
  Colors.amber,
  Colors.cyan,
  Colors.purple,
  Colors.brown,
  Colors.teal,
];
// need to figure out how to make the index the length of the card that can be asked
List<Widget> cards = List.generate(
  colors.length,
  (int index) {
    return FlashCard(
        frontWidget: Container(
            child: Text(   
           quizLogic.getQuestionBack(index),
            
        )),
        height: 400,
        width: 300,
        backWidget: Container(
            child: Text(
          quizLogic.getQuestionFront(index),
        ),),);
  },
);

class TCardPage extends StatefulWidget {
  @override
  _TCardPageState createState() => _TCardPageState();
}

class _TCardPageState extends State<TCardPage> {
  TCardController _controller = TCardController();

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            TCard(
              cards: cards,
              controller: _controller,
              onForward: (index, info) {
                _index = index;
                print(info.direction);
                setState(() {
                   quizLogic.nextQuestion();
                 
                });
              },
              onBack: (index, info) {
                _index = index;
                setState(() {});
              },
              onEnd: () {
                print('end');
              },
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    _controller.back();
                  },
                  child: Text('Back'),
                ),
                FlatButton(
                  onPressed: () {
                    print(quizLogic.getCurrentQuestion());
                   
                    _controller.forward();
                    print(quizLogic.getQuestionText());
                  },
                  child: Text('Forward'),
                ),
                FlatButton(
                  onPressed: () {
                    _controller.reset();
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(_index.toString()),
      ),
    );
  }
}
