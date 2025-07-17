part of game_room_library;

class GameRoom extends StatelessWidget {
  final QuizSession sessionData;
  const GameRoom({
    required this.sessionData,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - toolbarHeight.height,
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: LinearProgressIndicator(
              value: .5,
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) => CarouselSlider.builder(
                itemCount: sessionData.questions.length, 
                itemBuilder: (context, index, index2){
                   return child(sessionData.questions[index], context);
                }, 
                options: CarouselOptions(
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  height: constraints.maxHeight,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget child(Question question, BuildContext context){
  return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(24)
        )
      ),
      child: Column(
        spacing: 20,
        children: [
          // ? Question Window
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigo.shade300,
                    Colors.indigo.shade100,
                  ]
                ),
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                )
              ),
              child: Text(
                question.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            )
            
          ),

          // ? Choices
          Expanded(
            flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4, 
                (index){
                  final choice = [question.correctAnswer, ...question.otherChoices][index];
                  return GestureDetector(
                    onTap: (){
                      // TODO implement choice
                    },
                    onDoubleTap: () {
                      // Todo implement choice submittion
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffa1ffe4),
                        border: Border.all(
                          color: Color(0xff008f4f),
                          width: 1
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              ["A", "B", "C", "D"][index],
                              textAlign: TextAlign.center,
                            )
                          ),
                          Expanded(
                            flex: 8,
                            child: Text(
                              choice.text,
                              textAlign: TextAlign.center,
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Radio(
                              activeColor: Colors.green.shade600,
                              fillColor: MaterialStateProperty.all(Colors.green.shade600),
                              value: choice, 
                              groupValue: null, 
                              onChanged: (value){
                                // TODO implement onChange
                              }
                            )
                          ),
                        ],
                      ),
                    ),
                  );
                },
                growable: false,
              )
            )
            
          ),

          // ? Lifelines
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange
              ),
            )
            
          ),

          // // ? choices
          // Expanded(
          //   flex: 1,
          //   child: Column(
          //     children: List.generate(
          //       4, 
          //       (index){
          //         final choice = [question.correctAnswer, ...question.otherChoices][index];
          //         return GestureDetector(
          //           onTap: (){
          //             // TODO implement choice
          //           },
          //           onDoubleTap: () {
          //             // Todo implement choice submittion
          //           },
          //           child: Container(
          //             decoration: BoxDecoration(

          //             ),
          //             child: Row(
          //               children: [
          //                 Expanded(
          //                   flex: 2,
          //                   child: Text(
          //                     ["A", "B", "C", "D"][index],
          //                   )
          //                 ),
          //                 Expanded(
          //                   flex: 8,
          //                   child: Text(
          //                     choice.text,
          //                   )
          //                 ),
          //                 Expanded(
          //                   flex: 2,
          //                   child: Radio(
          //                     value: choice, 
          //                     groupValue: question.correctAnswer, 
          //                     onChanged: (value){
          //                       // TODO implement onChange
          //                     }
          //                   )
          //                 ),
          //               ],
          //             ),
          //           ),
          //         );
          //       },
          //       growable: false,
          //     )
          //     // [question.correctAnswer, ...question.otherChoices]
              
          //     // .ge(
          //     //   (choice) => GestureDetector(
          //     //     onTap: (){
          //     //       // TODO implement choice
          //     //     },
          //     //     onDoubleTap: () {
          //     //       // Todo implement choice submittion
          //     //     },
          //     //     child: Container(
          //     //       decoration: BoxDecoration(

          //     //       ),
          //     //       child: Row(
          //     //         children: [
          //     //           Expanded(
          //     //             flex: 2,
          //     //             child: Text(
          //     //               ["A", "B", "C", "D"][]
          //     //             )
          //     //           ),
          //     //         ],
          //     //       ),
          //     //     ),
          //     //   )
          //     // ).toList(),
          //   )
          // ),

          // // ? lifelines
          // Expanded(
          //   flex: 2,
          //   child: Row(

          //   )
            
          // ),

        ]
      ),
    );
}