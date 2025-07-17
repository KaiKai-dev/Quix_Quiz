import 'package:quiz_app/data/models/quiz/main_quiz.dart';
import 'package:quiz_app/data/models/quiz/question.dart';

class QuizSession {
  final Quiz quiz;
  final List<Question> questions;
  final int score;
  final DateTime? timeEnded;
  final Duration clock;
  final int streak;
  final int userId;
  final int currentQuestion;


  const QuizSession({
    required this.quiz, 
    required this.questions,
    required this.score, 
    required this.timeEnded, 
    required this.clock, 
    required this.streak, 
    required this.userId, 
    required this.currentQuestion,
  });

  factory QuizSession.createRoom({
    required List<Question> questions,
    required Quiz quizData,
  }) => QuizSession(
    quiz: quizData, 
    questions: questions,
    score: 0, 
    timeEnded: null, 
    clock: Duration(minutes: 2), 
    streak: 0, 
    userId: quizData.id,
    currentQuestion: 0,
  );

  QuizSession copyWith({
    Quiz? quiz, 
    List<Question>? questions,
    int? score, 
    DateTime? timeEnded, 
    Duration? clock, 
    int? streak, 
    int? userId, 
    int? currentQuestion,
  }) => QuizSession(
    quiz: quiz ?? this.quiz, 
    score: score ?? this.score, 
    questions: questions ?? this.questions,
    timeEnded: timeEnded ?? this.timeEnded, 
    clock: clock ?? this.clock, 
    streak: streak ?? this.streak, 
    userId: userId ?? this.userId,
    currentQuestion: currentQuestion ?? this.currentQuestion,
  );
}
