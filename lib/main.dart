import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      // TODO: Configure supabase
      // Supabase.initialize(
      //   url: 'https://xyzcompany.supabase.co',
      //   anonKey: 'public-anon-key',
      // ),
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),
      dotenv.load(fileName: ".env"),

    ]);
    runApp(const MainApp());
    
  } catch (e) {
    print(e);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
