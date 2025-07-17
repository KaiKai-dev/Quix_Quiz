import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/data/models/quiz/main_quiz.dart';
import 'package:quiz_app/logic/functions/extensions/int.dart';

class GameCard extends StatelessWidget {
  final Quiz quizData;
  final Function(int) onTapCallback;
  const GameCard({
    required this.quizData,
    required this.onTapCallback,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    print(quizData.category.name);
    return GestureDetector(
      onTap: (){
        onTapCallback(quizData.id);
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: EdgeInsets.all(8),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.8)
                )
              ],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: SvgPicture.asset(
                      "images/categories/${quizData.category.name}.svg",
                      height: 56,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
      
                      // title and question count
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  quizData.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "${
                                quizData.questionCount ?? (Random().nextInt(15))
                              } Questions", //! fetch questions length,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),
                      ),
      
      
                      // attempts count and energy icon
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, infoConstraints) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      MdiIcons.crown,
                                      size: 24,
                                      color: Colors.indigo.shade600,
                                    ),
                                    Text(
                                      Random().nextInt(20000).formatThousands,
                                      style: TextStyle(
                                        fontSize: 12,
      
                                      ),
                                    )
                                  ],
                                ),
                            
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.indigo.shade800,
                                        Colors.indigo.shade600,
                                        Colors.indigo.shade200
                                      ]
                                    ),
                                    borderRadius: BorderRadius.circular(32)
                                  ),
                                  child: Icon(
                                    MdiIcons.lightningBolt,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                )
                              ],
                            );
                          }
                        ),
                      )
                      
                    ],
                  )
                )
              ],
          
            ),
          );
        }
      ),
    );
  }
}