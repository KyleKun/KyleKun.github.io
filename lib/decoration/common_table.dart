import 'package:bonfire/bonfire.dart';

class CommonTable extends GameDecoration {
  CommonTable(Position position)
      : super(
            sprite: Sprite('itens/table.png'),
            initPosition: position,
            width: 32,
            height: 32,
            collision: Collision(
              width: 24,
              height: 28,
              align: CollisionAlign.TOP_CENTER,
            ));
}
