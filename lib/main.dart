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
      //   url: 'https://aogzaxgimdnukluaiobn.supabase.co',
      //   anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFvZ3pheGdpbWRudWtsdWFpb2JuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTIxNjQ1MzIsImV4cCI6MjA2Nzc0MDUzMn0.KfhmiWUaaXdFlVPIqEX8WFOPtxaRP1ja4RlECsOOfy8',
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
