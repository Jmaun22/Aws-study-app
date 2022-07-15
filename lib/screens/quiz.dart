import 'package:flutter/material.dart';
import 'package:aws_study/styles/color.dart';
import '/models/quiz_logic.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizLogic quizLogic = QuizLogic();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: lprimaryColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreIcons = [];

  void checkAnswer(String userPickedAnswer) {
    print(quizLogic.getCurrentQuestion());

    bool correctAnswer = false;

    String stringcorrectAnswer = quizLogic.getCorrectAnswer();

    if (stringcorrectAnswer == userPickedAnswer) {
      correctAnswer = true;
    }

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
                quizLogic.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // First Choice
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: OutlinedButton(
              onPressed: () {
                debugPrint('Received click');
                checkAnswer(quizLogic.getChoice1());
              },
              child: Text(
                quizLogic.getChoice1(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: OutlinedButton(
              onPressed: () {
                debugPrint('Received click');
                checkAnswer(quizLogic.getChoice2());
              },
              child: Text(
                quizLogic.getChoice2(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: OutlinedButton(
              onPressed: () {
                checkAnswer(quizLogic.getChoice3());
                debugPrint('Received click');
              },
              child: Text(
                quizLogic.getChoice3(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: OutlinedButton(
              onPressed: () {
                debugPrint('Received click');
                checkAnswer(quizLogic.getChoice4());
              },
              child: Text(
                quizLogic.getChoice4(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
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

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/