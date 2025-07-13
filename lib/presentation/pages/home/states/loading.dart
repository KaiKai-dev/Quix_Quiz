part of home_page_library;

class HomePageLoadingPage extends StatelessWidget {
  const HomePageLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}