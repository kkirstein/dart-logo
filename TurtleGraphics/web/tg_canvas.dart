import 'package:polymer/polymer.dart';

@CustomTag('tg-canvas')
class TgCanvas extends PolymerElement {

  // observable properties
  @observable int width;
  @observable int height;
  
  // constructor
  TgCanvas.created() : super.created();
}
