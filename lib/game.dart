import 'dart:async';

import 'package:flame/game.dart';
import 'package:swipe_2048/num_box.dart';
import 'package:swipe_2048/stage.dart';

import 'num_manager.dart';

class MyGame extends FlameGame {
  final numberManager = NumberManager();
  MyGame();
  @override
  FutureOr<void> onLoad() {
    add(Stage());
    return super.onLoad();
  }
}
