part of home_page_library;

class HomePageLoadedPage extends StatelessWidget {
  const HomePageLoadedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          // radius: 1.5,
          // transform: GradientTransform,
          // focalRadius: 1,
          colors: [
            Colors.indigo.shade700,
            Colors.indigo.shade400,
            Colors.indigo.shade200,
            Colors.indigo.shade100,
          ]
        )
      ),
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          spacing: 12,
          children: [

            // Daily Task
            LayoutBuilder(
              builder: (context, constraints) {
                final int maxValue = 15;
                final int currentValue = 3;
                return Container(
                  padding: EdgeInsets.all(4),
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.35),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16)
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withAlpha(100)
                    )
                  ),
                  child: Row(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.45),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12)
                          ),
                        ),
                        height: 120,
                        width: 120,
                        child: SvgPicture.asset(
                          "images/task-list-menu-document-svgrepo-com.svg",
                          height: 75,
                          fit: BoxFit.none,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                          height: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Header
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    // spacing: 2,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Task",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        "15 Questions",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.indigo.shade300,
                                          spreadRadius: .5,
                                          blurRadius: 10,
                                          offset: Offset(1, 1)
                                        )
                                      ]
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.question_answer_outlined
                                    ),
                                  )
                                ],
                              ),

                              //Progress Indicator
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 8,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: constraints.widthConstraints().maxWidth,
                                            height: 12,
                                            decoration: BoxDecoration(
                                              color: Colors.white.withValues(alpha: 0.3),
                                              borderRadius: BorderRadius.all(Radius.circular(8)),
                                              border: Border.all(
                                                width: .5,
                                                color: Colors.white,
                                              )
                                            ),
                                          ),
                                          Positioned(
                                            top: 1,
                                            left: 1,
                                            child: Container(
                                              width: ((constraints.widthConstraints().maxWidth - 2) / maxValue) * currentValue,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(colors: [
                                                  Colors.blue.shade400,
                                                  Colors.indigo.shade900,
                                                ]),
                                                borderRadius: BorderRadius.all(Radius.circular(8))
                                              ),
                                            ),
                                          )
                                        ],
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Progress",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "$currentValue / $maxValue",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      )
                                      // LinearProgressIndicator(
                                      //   minHeight: 10,
                                      //   value: 9/15,
                                      //   backgroundColor: Colors.white,
                                      //   color: LinearGrad,
                                      //   borderRadius: BorderRadius.all(Radius.circular(8)),
                                      // )
                                    ],
                                  );
                                }
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              } 
            )
          ],
        ),
      ),
    );
    
    
    // Center(
    //   child: GestureDetector(
    //     onTap: (){
    //       // context.read<HomePageCubit>().getQuestions(id: 1);
    //     },
    //     child: Container(
    //       padding: EdgeInsets.all(20),
    //       decoration: BoxDecoration(
    //         color: Colors.blue,
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(20)
    //         )
    //       ),
    //       child: Text(
    //         "Start a Quiz",
    //         style: TextStyle(
    //           fontSize: 16,
    //           color: Colors.white,
    //           fontWeight: FontWeight.bold
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}