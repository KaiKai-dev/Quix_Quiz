import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> createSupabaseInstance() async {
  await Supabase.initialize(
    url: dotenv.get('SUPABASE_DEPLOYMENT_URL'),
    anonKey: dotenv.get('SUPABASE_ANONKEY'),
    debug: true
  );
}