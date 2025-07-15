library home_page_library;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/data/enum/category.dart';
import 'package:quiz_app/data/models/quiz/main_quiz.dart';
import 'package:quiz_app/presentation/pages/home/components/game_card.dart';
import 'package:quiz_app/presentation/pages/home/components/quiz_category_card.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


// Logic
part '../../logic/pages/home/cubit.dart';
part '../../logic/pages/home/logic.dart';
part '../../logic/pages/home/state.dart';

// Presentation
part '../../presentation/pages/home/states/loaded.dart';
part '../../presentation/pages/home/states/loading.dart';
part '../../presentation/pages/home/components/daily_task.dart';