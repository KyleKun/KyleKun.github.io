import 'package:bonfire/bonfire.dart';

class Guard extends GameDecoration {
  Guard(Position position)
      : super(
            sprite: Sprite('itens/guard.png'),
            initPosition: position,
            width: 40,
            height: 40,
            collision: Collision(
              width: 40,
              height: 40,
              align: CollisionAlign.TOP_CENTER,
            ));
}
