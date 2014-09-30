import 'package:polymer/polymer.dart';

@CustomTag('tg-canvas')
class TgCanvas extends PolymerElement {

  // published properties (2-way binding)
  @published int width;
  @published int height;
  
  // constructor
  TgCanvas.created() : super.created();
}
