import 'package:bonfire/bonfire.dart';

class Bookshelf extends GameDecoration {
  Bookshelf(Position position)
      : super(
          sprite: Sprite('itens/bookshelf.png'),
          initPosition: position,
          width: 32,
          height: 32,
          collision: Collision(
            width: 24,
            height: 28,
            align: CollisionAlign.TOP_CENTER,
          ),
        );
}
