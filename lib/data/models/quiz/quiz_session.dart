import 'package:quiz_app/data/models/quiz/main_quiz.dart';

class QuizSession {
  final Quiz quiz;
  final int score;
  final DateTime? timeEnded;
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

  factory QuizSession.createRoom({
    required Map<String, dynamic> data
  }) => QuizSession(
    quiz: Quiz.fromJson(data: data), 
    score: 0, 
    timeEnded: null, 
    clock: Duration(minutes: 2), 
    streak: 0, 
    userId: data["userId"]
  );

  QuizSession copyWith({
    Quiz? quiz, 
    int? score, 
    DateTime? timeEnded, 
    Duration? clock, 
    int? streak, 
    int? userId, 
  }) => QuizSession(
    quiz: quiz ?? this.quiz, 
    score: score ?? this.score, 
    timeEnded: timeEnded ?? this.timeEnded, 
    clock: clock ?? this.clock, 
    streak: streak ?? this.streak, 
    userId: userId ?? this.userId
  );
}
