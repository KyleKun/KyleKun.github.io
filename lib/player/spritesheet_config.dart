import 'package:bonfire/bonfire.dart';

class SpriteSheetConfig {
  static SpriteSheet _create(String path) {
    return SpriteSheet(
      imageName: path,
      textureWidth: 32,
      textureHeight: 32,
      columns: 3,
      rows: 8,
    );
  }

  static SpriteSheet get player1 => _create('player/player1.png');
  static SpriteSheet get player2 => _create('player/player2.png');
  static SpriteSheet get player3 => _create('player/player3.png');
  static SpriteSheet get player4 => _create('player/player4.png');
  static SpriteSheet get player5 => _create('player/player5.png');
}
