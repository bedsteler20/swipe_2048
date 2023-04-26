import 'dart:async';

import 'package:flame/game.dart';
import 'package:swipe_2048/num_box.dart';
import 'package:swipe_2048/stage.dart';

class MyGame extends FlameGame {
  MyGame();
  @override
  FutureOr<void> onLoad() {
    add(Stage());
    return super.onLoad();
  }
}
