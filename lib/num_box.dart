import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:swipe_2048/generated/static_data.dart';
import 'package:swipe_2048/num_manager.dart';

import './helpers.dart';

class NumberBox extends PositionComponent with HasNumberManager {
  int _value = 2;
  late final textComp = TextComponent(
    anchor: Anchor.center,
    position: size / 2,
  );
  late final rectComp = RectangleComponent(
    size: size,
  );

  NumberBox({Vector2? position, Vector2? size})
      : super(position: position, size: size);

  @override
  FutureOr<void> onLoad() {
    value = numberManager.pickNumber();
    rectComp.add(textComp);
    add(rectComp);
    return super.onLoad();
  }

  int get value => _value;

  set value(int v) {
    _value = v;
    rectComp.paint.color = COLOR_MAP[v]!;
    numberManager.postNumber(v);
    textComp.text = v.toFriendlyString();
  }
}
