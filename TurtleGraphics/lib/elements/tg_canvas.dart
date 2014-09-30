import 'package:polymer/polymer.dart';
import 'dart:html';

import 'package:turtle_graphics/turtlecanvas.dart';

@CustomTag('tg-canvas')
class TgCanvas extends PolymerElement {

  // published properties (2-way binding)
  @published int width;
  @published int height;
  
  // private properties
  Turtle _turtle;
  
  // constructor
  TgCanvas.created() : super.created() {
    _turtle = new Turtle(($['turtle-canvas'] as CanvasElement).context2D);
  }
  
  @override
  void attached() {
    _turtle.demo();
  }
}
