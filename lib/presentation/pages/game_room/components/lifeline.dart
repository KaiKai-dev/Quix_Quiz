part of game_room_library;

class Lifeline extends StatelessWidget {
  final Widget icon;
  final String text;
  const Lifeline({
    required this.icon,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){}, 
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepOrange.shade600,
              Colors.deepOrange.shade300,
            ]
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12)
          ),
          border: Border.all(
            width: 1,
            color: Colors.white.withAlpha(100)
          )
        ),
        width: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4,
          children: [
            Container(
              alignment: Alignment.center,
              child: icon,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      )
    );
  }
}