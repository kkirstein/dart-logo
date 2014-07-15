part of turtle_canvas;

class CanvasDraw {
  
  // public properties
  int width;
  int height;
  
  // private properties
  CanvasRenderingContext2D _ctx;
  
  // constructor
  CanvasDraw(this._ctx) {
    width = _ctx.canvas.width;
    height = _ctx.canvas.height;
  }
  
  // getter & setter properties
  int get centerX => width ~/ 2;
  int get centerY => height ~/ 2;
  
  // public methods
  void line(int startx, int starty, int endx, int endy, [String color]) {
    if (color != null) {
      _ctx.strokeStyle = color;
    } else {
      _ctx.strokeStyle = "#000000";
    }
    
    _ctx.beginPath();
    _ctx.moveTo(startx, starty);
    _ctx.lineTo(endx, endy);
    _ctx.stroke();
    
//    _ctx.beginPath();
  }
  
  void clear() {
    _ctx.clearRect(0, 0, width, height);
  }
}