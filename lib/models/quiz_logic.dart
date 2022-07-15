import 'question.dart';

class QuizLogic {
  int _currentQuestion = 0;

  List<Question> _questionData = [
    Question(
        'What does IAM stand for?',
        'Identy and Access Mangmnet',
        'Identy and Amazon Mangmnet',
        'Identy and Amazon Market',
        'Identy and Access Market',
        'Identy and Access Mangmnet'),
    Question('What is the purpose of IAM?', 'create groups', 'create users',
        'goup users', 'all of the above', 'all of the above'),
    Question('What can IAM groups contain?', 'only users', 'other groups',
        'users and groups', 'organizations', 'only users'),
    Question(
        'What is the point of an IAM policy?',
        'create users',
        'create groups',
        'describes what users in a group can do',
        'describes what users in a group cant do',
        'describes what users in a group can do'),
    Question(
        'What does is Amazon EC2 stantd for?',
        'Elastic Computer Cloud',
        'Elastic Cloud Computer',
        'Elastic Cloud Cloud',
        'Elastic Compute Cloud',
        'Elastic Compute Cloud'),
    Question(
        'What is the main purpose of EC2?',
        'Storing data on virtual machines',
        'Distributing load across machines',
        'Renting virtual machines',
        'Scaling the services using an auto-scaling group',
        'Renting virtual machines'),
    Question('What operating system/s can you choose on EC2?', 'Linux',
        'Windows', 'Mac', 'All of the Above', 'All of the Above'),
    Question(
        'Which is not an option when choosing EC2 configuation and sizing?',
        'CPU',
        'RAM',
        'storage space',
        'ROM',
        'ROM'),
    Question('How many times in the EC2 bootstrap command run at the start?',
        '2', '3', '1', '4', '1'),
    Question(
        'What does bootstraping mean?',
        'launching commands when machine is off',
        'deleting commands when machine is off',
        'launching programs when machine is off',
        'launching commands when machine is first starts',
        'launching commands when machine is first starts'),
  ];

  void nextQuestion() {
    if (_currentQuestion < _questionData.length - 1) {
      _currentQuestion++;
    }
  }

// returns the current quesiton
  int getCurrentQuestion() {
    return _currentQuestion;
  }

  // get the question text

  String getQuestionText() {
    return _questionData[_currentQuestion].questionText;
  }

// choice 1 text
  String getChoice1() {
    return _questionData[_currentQuestion].firstquestionChoice;
  }

// gets choice two text
  String getChoice2() {
    return _questionData[_currentQuestion].secondquestionChoice;
  }

// get choice 3 text
  String getChoice3() {
    return _questionData[_currentQuestion].thirdquestionChoice;
  }

// get choice 4 text
  String getChoice4() {
    return _questionData[_currentQuestion].fourthQuestionChoice;
  }

  // when the quiz is finsihed

  bool isFinished() {
    if (_currentQuestion >= 9) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _currentQuestion = 0;
  }

  String getCorrectAnswer() {
    return _questionData[_currentQuestion].questionAnswer;
  }
}
