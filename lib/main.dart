import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import './game.dart';

void main() {
  runApp(const GameWidget<MyGame>.controlled(
    gameFactory: MyGame.new,
  ));
}
