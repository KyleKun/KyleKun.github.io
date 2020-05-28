import 'package:bonfire/bonfire.dart';

class Coins extends GameDecoration {
  Coins(Position position)
      : super(
          sprite: Sprite('itens/bag_coins.png'),
          initPosition: position,
          width: 32,
          height: 32,
          collision: Collision(
            width: 24,
            height: 28,
          ),
        );
}
