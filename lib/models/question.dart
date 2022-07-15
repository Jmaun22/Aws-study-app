class Question {
  String questionText = 'First Question';
  String firstquestionChoice = 'Choice 1';
  String secondquestionChoice = 'Choice 2';
  String thirdquestionChoice = 'Choice 3';
  String fourthQuestionChoice = 'Choice 4';
  String questionAnswer = 'Choice 1';

  Question(String q, String c1, String c2, String c3, String c4, String a) {
    questionText = q;
    firstquestionChoice = c1;
    secondquestionChoice = c2;
    thirdquestionChoice = c3;
    fourthQuestionChoice = c4;

    questionAnswer = a;
  }
}