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
                      isFliped: false,
                    ),
                    MatchingFlashCard(
                      backtext:    quizLogic.getQuestionBack(2),
                        isFliped: false,
                    ),
                    MatchingFlashCard(
                      backtext:    quizLogic.getQuestionBack(3),
                        isFliped: false,
                    ),
                    MatchingFlashCard(
                      backtext:  quizLogic.getQuestionBack(4),
                        isFliped: false,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                children: <Widget>[
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(8),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(5),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(6),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionBack(7),
                      isFliped: false,
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(8),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(1),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext: quizLogic.getQuestionFront(2),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(3),
                      isFliped: false,
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(4),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(5),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(6),
                      isFliped: false,
                  ),
                  MatchingFlashCard(
                    backtext:  quizLogic.getQuestionFront(7),
                      isFliped: false,
                  ),
                ],
              )),
            ]));
  }
}
