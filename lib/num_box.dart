import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import './helpers.dart';

class NumberBox extends PositionComponent {
  late final textComp = TextComponent(
    text: "2048",
    anchor: Anchor.center,
    position: rectComp.size / 2,
  );
  late final rectComp = RectangleComponent(
    size: Vector2(100, 100),
    paint: Paint()..color = Colors.red,
  );

  NumberBox({Vector2? position, Vector2? size})
      : super(position: position, size: size) {
    rectComp.size.addListener(_onRectResize);
  }

  @override
  FutureOr<void> onLoad() {
    rectComp.add(textComp);
    add(rectComp);
    return super.onLoad();
  }

  @subscribe
  void _onRectResize() {
    // Center text component
  }
}
