library game_room_library;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/lists/tollbar_height.dart';
import 'package:quiz_app/data/models/quiz/choice.dart';
import 'package:quiz_app/data/models/quiz/main_quiz.dart';
import 'package:quiz_app/data/models/quiz/question.dart';
import 'package:quiz_app/data/models/quiz/quiz_session.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part '../../logic/pages/game_room/cubit.dart';
part '../../logic/pages/game_room/logic.dart';
part '../../logic/pages/game_room/state.dart';

part '../../presentation/pages/game_room/states/loaded.dart';
part '../../presentation/pages/game_room/states/loading.dart';
part '../../presentation/pages/game_room/states/results.dart';