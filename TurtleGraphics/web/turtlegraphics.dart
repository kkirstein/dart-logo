library turtle_gui;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

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
  }
  
  // private methods
  void _defaultValues() {
    width = 800;
    height = 600;
  }
}

class TurtleGraphicsModule extends Module {

  /**
   * constructor
   */
  TurtleGraphicsModule() {
    type(TurtleGraphicsController);
  }
}

/**
 * main entry point
 */
void main() {
  applicationFactory().addModule(new TurtleGraphicsModule()).run();
}
