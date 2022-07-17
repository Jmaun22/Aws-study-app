import 'package:flutter/material.dart';
import 'package:aws_study/styles/color.dart';
import '/models/quiz_logic.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizLogic quizLogic = QuizLogic();

class TrueFalse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: lprimaryColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TrueFlasePage(),
          ),
        ),
      ),
    );
  }
}

class TrueFlasePage extends StatefulWidget {
  @override
  _TrueFlasePageState createState() => _TrueFlasePageState();
}

class _TrueFlasePageState extends State<TrueFlasePage> {
  List<Icon> scoreIcons = [];

  void checkAnswer(bool userPickedAnswer) {
    
     bool correctAnswer =  quizLogic.checkTrueFalse(userPickedAnswer);
   

   
    setState(() {
      if (quizLogic.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizLogic.reset();

        scoreIcons = [];
      } else {
        if (correctAnswer) {
          scoreIcons.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreIcons.add(
            Icon(
              Icons.check,
              color: Colors.red,
            ),
          );
        }

        quizLogic.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Question text
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                '${quizLogic.getQuestionText()} ${quizLogic.getTrueFalseText()}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // True
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                print('true pressed');
                checkAnswer(true);
              },
            ),
          ),
        ),

        // False

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                print('fasle pressed');
                checkAnswer(false);
              },
            ),
          ),
        ),

        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 200,
            maxWidth: 50,
          ),
          child: Row(
            children: scoreIcons,
          ),
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}
