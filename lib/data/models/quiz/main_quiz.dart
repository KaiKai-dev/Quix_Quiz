import 'package:quiz_app/data/enum/category.dart';
import 'package:quiz_app/data/models/quiz/question.dart';

class Quiz {
  final int id;
  final int creatorId;
  final String title;
  final List<Question> questions;
  final Category category;

  Quiz({
    required this.id, 
    required this.creatorId, 
    required this.title, 
    required this.questions, 
    required this.category,
  });

  factory Quiz.fromJson({
    required Map<String, dynamic> data
  }) => Quiz(
    id: data["quiz_id"], 
    creatorId: data["userId"], 
    title: data["title"], 
    questions: data["questions"], //should be List<Question> 
    category: data["category"] ?? Category.general,
  );
}