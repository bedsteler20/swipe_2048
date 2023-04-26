import 'dart:async';

import 'package:flame/components.dart';
import 'package:swipe_2048/num_box.dart';

class Stage extends Component {
  int dX = 4;
  int dY = 6;

  @override
  FutureOr<void> onLoad() {
    double size = 100;
    double padding = 10;
    double x = 0, y = 0;
    for (var i = 0; i < dY; i++) {
      for (var o = 0; o < dX; o++) {
        add(NumberBox(
          position: Vector2(x, y),
          size: Vector2(size, size),
        ));
        x += size + padding ;
      }
      x = 0;
      y += size + padding;
    }
    return super.onLoad();
  }
}
