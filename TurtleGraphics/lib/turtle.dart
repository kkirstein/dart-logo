part of turtle_canvas;

class Turtle extends CanvasDraw {

  // public properties
  int x;
  int y;
  bool penDown;
  String penColor;

  // private properties
  int _direction;

  // constructor
  Turtle(CanvasRenderingContext2D ctx) : super(ctx) {
    x = 0;
    y = 0;
    penDown = true;
    penColor = "#000000";
  }
  // getter & setter properties
  int get direction => _direction;
  set direction(int value) => _direction = _wrapAroundDirection(value);

  // public methods
  void forward(int steps) {
    // TODO
  }

  void backward(int steps) {
    // TODO
  }

  void right(int deg) {
    direction += deg;
  }
  void left(int deg) {
    direction -= deg;
  }

  // private methods
  int _wrapAroundDirection(int value) {
    while (value > 360) value -= 360;
    return value;
  }

}
