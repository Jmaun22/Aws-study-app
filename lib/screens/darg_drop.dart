import 'package:flutter/material.dart';
import '../styles/color.dart';
import '../widgets/matching_flashcard.dart';
import '../models/quiz_logic.dart';

QuizLogic quizLogic = QuizLogic();

class Matching extends StatefulWidget {
  const Matching({Key? key}) : super(key: key);

  @override
  State<Matching> createState() => _MatchingState();
}

class _MatchingState extends State<Matching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lprimaryColor,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    MatchingFlashCard(
                      backtext:    quizLogic.getQuestionBack(1),
                    ),
                    MatchingFlashCard(
                      backtext:    quizLogic.getQuestionBack(2),
                    ),
                    MatchingFlashCard(
                      backtext:    quizLogic.getQuestionBack(3),
                    ),
                    MatchingFlashCard(
                      backtext:  quizLogic.getQuestionBack(4),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                children: <Widget>[
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(8),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(5),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(6),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(7),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(8),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(1),
                  ),
                  MatchingFlashCard(
                    backtext: quizLogic.getQuestionFront(2),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(3),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(4),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(5),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(6),
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(7),
                  ),
                ],
              )),
            ]));
  }
}
