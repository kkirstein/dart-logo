library turtle_gui;

import 'dart:html';

import 'package:turtle_graphics/turtlecanvas.dart';

/**
 * GUI controller for interactive TurtleGraphics
 */
class TurtleGraphicsController {

  // public properties
  int width;
  int height;
  
  /**
   * constructor sets default porperties
   */
  TurtleGraphicsController() {
    _defaultValues();
    _paint();
  }
  
  // private methods
  void _defaultValues() {
    width = 800;
    height = 600;
  }
  
  // do some painting
  void _paint() {
    var cd = new CanvasDraw((document.querySelector("#turtle-canvas") as CanvasElement).context2D);
    
    var turtle = new Turtle((document.querySelector("#turtle-canvas") as CanvasElement).context2D);
    turtle.show();
    
//    cd.line(0, 0, 300, 150);
//    cd.line(400, 300, 250, 150, "#FF0000");
  }
}
