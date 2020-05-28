import 'package:bonfire/bonfire.dart';

class BigTable extends GameDecoration {
  BigTable(Position position)
      : super(
            sprite: Sprite('itens/table_2.png'),
            initPosition: position,
            width: 64,
            height: 32,
            collision: Collision(
              width: 48,
              height: 28,
              align: CollisionAlign.TOP_CENTER,
            ));
}
