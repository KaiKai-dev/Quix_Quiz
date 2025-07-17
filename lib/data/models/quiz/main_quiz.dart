import 'package:quiz_app/data/enum/category.dart';

class Quiz {
  final int id;
  final int creatorId;
  // final DateTime created_at;
  final String title;
  final Category category;
  final int questionCount;

  Quiz({
    required this.id, 
    required this.creatorId, 
    required this.questionCount,
    required this.title, 
    required this.category,
  });

  factory Quiz.fromJson({
    required Map<String, dynamic> data
  }) => Quiz(
    id: data["id"], 
    creatorId: data["created_by"],
    title: data["title"],
    questionCount: data["question_count"], 
    category: Category.fromInt(data["category"]),
  );
}