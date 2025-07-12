import 'package:quiz_app/data/models/quiz/main_quiz.dart';

class QuizSession {
  final Quiz quiz;
  final int score;
  final DateTime timeEnded;
  final Duration clock;
  final int streak;
  final int userId;


  const QuizSession({
    required this.quiz, 
    required this.score, 
    required this.timeEnded, 
    required this.clock, 
    required this.streak, 
    required this.userId, 
  });
}
