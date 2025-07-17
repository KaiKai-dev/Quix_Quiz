import 'package:quiz_app/data/models/quiz/choice.dart';

class Question {
  final int id;
  final String text;
  final Choice correctAnswer;
  final List<Choice> otherChoices;
  final int quizId;
  
  const Question({
    required this.id,
    required this.quizId,
    required this.correctAnswer,
    required this.otherChoices,
    required this.text
  });

  factory Question.fromJson({
    required Map<String, dynamic> data
  }) => Question(
    id: data["id"] as int, 
    quizId: data["quiz_id"] as int, 
    correctAnswer: Choice(text: data["correct_answer"], isCorrect: true),
    otherChoices: [
      Choice(text: data["wrong_choice_1"]),
      Choice(text: data["wrong_choice_2"]),
      Choice(text: data["wrong_choice_3"]),
    ], 
    text: data["question_text"]
  );
}
