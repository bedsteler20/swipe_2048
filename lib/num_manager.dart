import 'dart:math';

import 'package:flame/components.dart';
import 'package:swipe_2048/game.dart';
import 'package:swipe_2048/generated/static_data.dart';

// ignore: constant_identifier_names
const _RANGE_SIZE = 10;

class NumberManager extends Component {
  int _maxNum = 2;
  int _rangeOffset = 0;
  List<int> get range =>
      NUMBERS.sublist(_rangeOffset, _rangeOffset + _RANGE_SIZE);

  void postNumber(int val) {
    if (val > _maxNum) {
      _maxNum = val;
    }
  }

  void syncRange() {
    _rangeOffset = NUMBERS.indexWhere((e) => e == _maxNum);
  }

  int pickNumber() {
    return range[Random().nextInt(_RANGE_SIZE - 1)];
  }
}

mixin HasNumberManager on Component {
  NumberManager get numberManager => (findGame() as MyGame).numberManager;
}
