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
            Colors.indigo.shade300,
          ]
        )
      ),
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          spacing: 32,
          children: [
            DailyTask(
              goalTitle: "Questions",
              currentValue: 10, 
              goalValue: 15, 
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 8,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Quiz",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      QuizCard(category: Category.general),
                      QuizCard(category: Category.sports),
                      QuizCard(category: Category.science),
                      QuizCard(category: Category.fashion),
                      QuizCard(category: Category.music),
                    ],
                  )
                ],
              ),
            ),


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