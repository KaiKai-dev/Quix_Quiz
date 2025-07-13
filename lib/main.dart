import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:quiz_app/app/router/library.dart';
import 'package:quiz_app/core/services/supabase/instance.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    // await dotenv.load(fileName: ".env");

    await Future.wait([
      // createSupabaseInstance(),
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),

    ]);
    runApp(const MainApp());
    
  } catch (e) {
    debugPrint("$e");
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Quix Quiz",
      routerConfig: routes,
    );
  }
}
