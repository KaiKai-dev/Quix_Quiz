import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/data/enum/category.dart';
import 'package:quiz_app/logic/functions/extensions/string.dart';

class QuizCard extends StatelessWidget {
  final Category category;
  const QuizCard({
    required this.category,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.35),
            borderRadius: BorderRadius.all(
              Radius.circular(12)
            ),
            border: Border.all(
              width: 1,
              color: Colors.white.withAlpha(100)
            )
          ),
          child: SvgPicture.asset(
            "images/categories/${category.name}.svg",
            height: 35,
          ),
        ),
        Text(
          category.name.capitalize(),
          style: TextStyle(
            fontSize: 12,
            color: Colors.white
          ),
        )
      ],
    );
  }
}