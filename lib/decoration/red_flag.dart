import 'package:bonfire/bonfire.dart';

class RedFlag extends GameDecoration {
  RedFlag(Position position)
      : super(
          sprite: Sprite('itens/flag_red.png'),
          initPosition: position,
          width: 32,
          height: 32,
        );
}
