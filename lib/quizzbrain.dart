import 'question.dart';

class QuizBrain{
  // here we make the questionBank instance to private
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('Dart\'s break statement is used to exit a loop.', true),
    Question('Dart\'s double type is used for representing integers.', false),
    Question('Dart is a compiled language.', true),
    Question('Flutter uses Java for app development.', false),
    Question('Dart is an object-oriented programming language.', true),
    Question('Flutter is developed by Facebook.', false),
    Question(' Flutter supports only Android app development.', false),
    Question('Dart\'s bool type is used for representing String.', false),
    Question(' The "pubspec.yaml" file is used to declare dependencies in a Flutter project.', true),
    Question('Stateless widgets can change their internal state during the widget\'s lifetime.', false),
    Question('Hot Reload allows developers to see the changes in the app instantly without restarting.', true),
    Question('Flutter is a web development framework.', false ),
    Question(' The statement "StatefulWidget is used for widgets that can change dynamically',true ),
    Question('Single inheritance is a fundamental concept in object-oriented programming.',true ),

  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber >= _questionBank.length - 1){
     // print('Now returning true');
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}