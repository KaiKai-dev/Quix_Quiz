import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/data/models/quiz/main_quiz.dart';
import 'package:quiz_app/logic/functions/extensions/int.dart';

class GameCard extends StatelessWidget {
  final Quiz quizData;
  final int? questionCount;
  const GameCard({
    required this.quizData,
    this.questionCount,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.all(8),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.8)
              )
            ]
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(

                  ),
                  child: SvgPicture.asset(
                    "images/categories/${quizData.category.name}.svg",
                    height: (constraints.minHeight * .5) * .8,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [

                    // title and question count
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            quizData.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "${
                              questionCount ?? (Random().nextInt(15))
                            } Questions", //! fetch questions length,
                            style: TextStyle(
                              fontSize: 8,
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
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    MdiIcons.crown,
                                    size: 16,
                                    color: Colors.indigo.shade600,
                                  ),
                                  Text(
                                    Random().nextInt(20000).formatThousands,
                                    style: TextStyle(
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                          
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.indigo.shade800,
                                      Colors.indigo.shade600
                                    ]
                                  ),
                                ),
                                child: Icon(
                                  MdiIcons.lightningBolt,
                                  color: Colors.white,
                                  size: infoConstraints.minHeight,
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
    );
  }
}