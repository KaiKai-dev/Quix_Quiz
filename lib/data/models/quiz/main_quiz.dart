import 'package:quiz_app/data/enum/category.dart';
import 'package:quiz_app/data/models/quiz/question.dart';

class Quiz {
  final int id;
  final int creatorId;
  // final DateTime created_at;
  final String title;
  final Category category;

  Quiz({
    required this.id, 
    required this.creatorId, 
    // required this.created_at,
    required this.title, 
    required this.category,
  });

  factory Quiz.fromJson({
    required Map<String, dynamic> data
  }) {
    // final String _createdAtExplode = (data["created_at"] as String)
    print(data["created_at"].runtimeType);
    return Quiz(
      id: data["id"], 
      creatorId: data["created_by"],
      // created_at: DateTime.now(), 
      title: data["title"], 
      // questions: data["questions"], //should be List<Question> 
      category: Category.fromInt(data["category"]),
    );
  } 
}