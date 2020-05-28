import 'package:bonfire/bonfire.dart';
import 'package:flame/position.dart';
import 'package:portfolio/decoration/barrel.dart';
import 'package:portfolio/decoration/big_table.dart';
import 'package:portfolio/decoration/bookshelf.dart';
import 'package:portfolio/decoration/coins.dart';
import 'package:portfolio/decoration/common_table.dart';
import 'package:portfolio/decoration/gem.dart';
import 'package:portfolio/decoration/guard.dart';
import 'package:portfolio/decoration/red_flag.dart';
import 'package:portfolio/decoration/torch.dart';
import 'package:portfolio/npc/king.dart';
import 'package:portfolio/npc/prince.dart';
import 'package:portfolio/npc/princess.dart';
import 'package:portfolio/npc/queen.dart';
import 'package:portfolio/npc/sensei.dart';

class PortfolioMap {
  static const double tileSize = 32;

  static MapWorld map() {
    List<Tile> tileList = List();
    bool isNotFilled;

    void addTile(tile, x, y) {
      tileList.add(Tile(tile, Position(x.toDouble(), y.toDouble()),
          collision: true, size: tileSize));
    }

    void addTileWithoutCollision(tile, x, y) {
      tileList.add(
          Tile(tile, Position(x.toDouble(), y.toDouble()), size: tileSize));
    }

    List.generate(27, (x) {
      List.generate(27, (y) {
        // FIRST WALL ROW TO BE RENDERED
        if (y == 6 && x >= 15 && x <= 25) {
          addTile('tile/wall_top_mid.png', x, y);
        }
        if (y == 7 && x >= 15 && x <= 25) {
          addTile('tile/wall_mid.png', x, y);
        }

        // FLOOR
        if (y >= 8 && y <= 22 && x >= 15 && x <= 25) {
          isNotFilled = true;

          if (x == 16 && y >= 8 && y <= 11) {
            addTileWithoutCollision('tile/left_carpet.png', x, y);
            isNotFilled = false;
          }
          if (x == 15 && y >= 8 && y <= 11) {
            addTile('tile/left_special_floor.png', x, y);
            isNotFilled = false;
          }
          if (x == 24 && y >= 8 && y <= 11) {
            addTileWithoutCollision('tile/right_carpet.png', x, y);
            isNotFilled = false;
          }
          if (x == 25 && y >= 8 && y <= 11) {
            addTile('tile/right_special_floor.png', x, y);
            isNotFilled = false;
          }
          if (x == 16 && y == 11) {
            addTileWithoutCollision('tile/top_left_carpet.png', x, y);
            isNotFilled = false;
          }
          if (x == 15 && y == 12) {
            addTile('tile/left_inner_floor.png', x, y);
            isNotFilled = false;
          }
          if (x == 15 && y == 13) {
            addTile('tile/left_end_floor.png', x, y);
            isNotFilled = false;
          }
          if (x == 24 && y == 11) {
            addTileWithoutCollision('tile/top_right_carpet.png', x, y);
            isNotFilled = false;
          }
          if (x == 25 && y == 12) {
            addTile('tile/right_inner_floor.png', x, y);
            isNotFilled = false;
          }
          if (x == 25 && y == 13) {
            addTile('tile/right_end_floor.png', x, y);
            isNotFilled = false;
          }

          if (x >= 17 && x <= 23 && y == 8) {
            addTileWithoutCollision('tile/mid_carpet.png', x, y);
            isNotFilled = false;
          }

          if (y == 10 && (x == 18 || x == 20 || x == 22)) {
            addTileWithoutCollision('tile/mid_carpet.png', x, y);
            isNotFilled = false;
          }

          if (y == 10 && (x == 17 || x == 19 || x == 21 || x == 23)) {
            addTileWithoutCollision('tile/mid_path_stairs.png', x, y);
            isNotFilled = false;
          }

          if (x >= 17 && x <= 23 && y == 9) {
            addTileWithoutCollision('tile/mid_path_stairs.png', x, y);
            isNotFilled = false;
          }

          if (x >= 17 && x <= 23 && y == 11) {
            addTileWithoutCollision('tile/top_carpet.png', x, y);
            isNotFilled = false;
          }

          if (x >= 16 && x <= 24 && y == 13 && x != 19 && x != 20 && x != 21) {
            addTile('tile/mid_end_floor.png', x, y);
            isNotFilled = false;
          }

          if (x >= 16 && x <= 24 && y == 12 && x != 19 && x != 20 && x != 21) {
            addTileWithoutCollision('tile/mid_inner_floor.png', x, y);
            isNotFilled = false;
          }

          // STAIRS
          if (x == 19 && y >= 12 && y <= 13) {
            addTileWithoutCollision('tile/left_stairs.png', x, y);
            isNotFilled = false;
          }

          if (x == 20 && y >= 12 && y <= 13) {
            addTileWithoutCollision('tile/mid_stairs.png', x, y);
            isNotFilled = false;
          }

          if (x == 21 && y >= 12 && y <= 13) {
            addTileWithoutCollision('tile/right_stairs.png', x, y);
            isNotFilled = false;
          }

          // PATH TO STAIRS
          if (x == 19 && y >= 14 && y <= 19) {
            addTileWithoutCollision('tile/left_path_stairs.png', x, y);
            isNotFilled = false;
          }

          if (x == 20 && y >= 14 && y <= 19) {
            addTileWithoutCollision('tile/mid_path_stairs.png', x, y);
            isNotFilled = false;
          }

          if (x == 21 && y >= 14 && y <= 19) {
            addTileWithoutCollision('tile/right_path_stairs.png', x, y);
            isNotFilled = false;
          }

          // COMMON FLOOR
          if (isNotFilled) {
            addTileWithoutCollision('tile/floor.png', x, y);
          }
        }

        // LAST WALL ROW
        if (y == 23 && x >= 15 && x <= 25) {
          addTile('tile/old_wall.png', x, y);
        }

        // LEFT WALL
        if (y >= 7 && y <= 22 && x == 14) {
          addTile('tile/wall_top_left.png', x, y);
        }

        // RIGHT WALL
        if (y >= 7 && y <= 22 && x == 26) {
          addTile('tile/wall_top_right.png', x, y);
        }

        // INNERS
        if (y == 6 && x == 14) {
          addTile('tile/wall_top_inner_left.png', x, y);
        }

        if (y == 6 && x == 26) {
          addTile('tile/wall_top_inner_right.png', x, y);
        }
      });
    });

    return MapWorld(tileList);
  }

  static List<GameDecoration> decorations() {
    return [
      // BOOKS
      Bookshelf(getRelativeTilePosition(17, 8)),
      Bookshelf(getRelativeTilePosition(19, 8)),
      Bookshelf(getRelativeTilePosition(21, 8)),
      Bookshelf(getRelativeTilePosition(23, 8)),

      // NPCS
      Sensei(getRelativeTilePosition(18, 19)),
      King(getRelativeTilePosition(16, 8)),
      Queen(getRelativeTilePosition(18, 8)),
      Prince(getRelativeTilePosition(20, 8)),
      Princess(getRelativeTilePosition(22, 8)),

      // GEMS
      Gem(getRelativeTilePosition(17, 7), 'purple'),
      Gem(getRelativeTilePosition(19, 7), 'orange'),
      Gem(getRelativeTilePosition(21, 7), 'green'),
      Gem(getRelativeTilePosition(23, 7), 'yellow'),

      // FLAGS
      RedFlag(getRelativeTilePosition(15, 7)),
      RedFlag(getRelativeTilePosition(25, 7)),

      // GUARDS
      Guard(getRelativeTilePosition(18, 13)),
      Guard(getRelativeTilePosition(22, 13)),

      // BARRELS
      Barrel(getRelativeTilePosition(15, 17)),
      Barrel(getRelativeTilePosition(15, 18)),
      Barrel(getRelativeTilePosition(15, 22)),
      Barrel(getRelativeTilePosition(25, 14)),
      Barrel(getRelativeTilePosition(25, 15)),
      Barrel(getRelativeTilePosition(15, 18)),
      Barrel(getRelativeTilePosition(25, 21)),
      Barrel(getRelativeTilePosition(25, 22)),
      Barrel(getRelativeTilePosition(24, 22)),

      // TABLES
      CommonTable(getRelativeTilePosition(17, 16)),
      BigTable(getRelativeTilePosition(23, 17)),

      // COIN BAGS
      Coins(getRelativeTilePosition(15, 21)),
      Coins(getRelativeTilePosition(24, 16)),
      Coins(getRelativeTilePosition(16, 15)),

      // TORCHS
      Torch(getRelativeTilePosition(16, 7)),
      Torch(getRelativeTilePosition(18, 7)),
      Torch(getRelativeTilePosition(20, 7)),
      Torch(getRelativeTilePosition(22, 7)),
      Torch(getRelativeTilePosition(24, 7)),
    ];
  }

  static Position getRelativeTilePosition(int x, int y) {
    return Position(
      (x * tileSize).toDouble(),
      (y * tileSize).toDouble(),
    );
  }
}
