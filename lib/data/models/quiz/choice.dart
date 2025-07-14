class Choice {
  final String text;
  final bool isCorrect;

  const Choice({
    required this.text,
    this.isCorrect = false,
  });

  factory Choice.fromJson({
    required Map<String, dynamic> data
  }) => Choice(
    text: data["text"],
    isCorrect: data["isCorrect"]
  );

}