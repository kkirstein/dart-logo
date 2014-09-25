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
    x = ctx.canvas.width ~/ 2;
    y = ctx.canvas.height ~/ 2;
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

  void show() {
    _drawTurtle();
  }
  
  // private methods
  int _wrapAroundDirection(int value) {
    while (value > 360) value -= 360;
    return value;
  }

  void _drawTurtle() {
    var size = 10;
    line(x, y, x+size, y+size, penColor);
    line(x+size, y+size, x, y-2*size, penColor);
    line(x, y-2*size, x-size, y+size, penColor);
    line(x-size, y+size, x, y, penColor);
  }
}
