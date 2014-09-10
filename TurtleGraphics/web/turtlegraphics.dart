library turtle_gui;

import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'package:turtle_graphics/turtlecanvas.dart';

/**
 * GIU controller for interactive TurtleGraphics
 */
@Controller(
    selector: '[turtle-gui]',
    publishAs: 'ctrl')
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

class TurtleGraphicsModule extends Module {

  /**
   * constructor
   */
  TurtleGraphicsModule() {
    bind(TurtleGraphicsController);
  }
}

/**
 * main entry point
 */
void main() {
  applicationFactory().addModule(new TurtleGraphicsModule()).run();
}
