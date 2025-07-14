import 'package:quiz_app/data/models/quiz/choice.dart';

class Question {
  final int id;
  final String text;
  final List<Choice> choices;
  final int quizId;
  
  const Question({
    required this.id,
    required this.quizId,
    required this.choices,
    required this.text
  });
}
