import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> createSupabaseInstance() async {
  await Supabase.initialize(
    url: 'https://aogzaxgimdnukluaiobn.supabase.co',
    anonKey: 'sb_publishable_918Chw1RC-m0OJ5m1uvacA_Z3qtlB_3',
    debug: true
  );
}