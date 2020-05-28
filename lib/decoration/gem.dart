import 'package:bonfire/bonfire.dart';

class Gem extends GameDecoration {
  Gem(Position position, String color)
      : super(
          sprite: Sprite('itens/${color}_gem.png'),
          initPosition: position,
          width: 32,
          height: 32,
        );
}
