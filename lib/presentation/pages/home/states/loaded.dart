part of home_page_library;

class HomePageLoadedPage extends StatelessWidget {
  const HomePageLoadedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeContext = context.read<HomePageCubit>().state;
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 16,
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
                      "View All",
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 16,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "More Games",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  // scrollDirection: Axis.vertical,
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 2,
                  //   crossAxisSpacing: 4,
                  // ),
                  // itemBuilder: (context, index) {
                  //   GameCard(quizData: (homeContext as HomePageLoadedState).quizzes[index]);
                  // },


                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...(homeContext as HomePageLoadedState).quizzes.map(
                      (quiz) => Expanded(
                        child: GameCard(
                          quizData: quiz
                        ),
                      )
                    ),
                  ],
                )
              ],
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