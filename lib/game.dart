import 'package:bonfire/bonfire.dart';
import 'package:portfolio/map/portfolio_map.dart';
import 'package:portfolio/player/my_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/player/spritesheet_config.dart';

bool isMobile;

class Game extends StatefulWidget {
  final int idCharacter;
  const Game({Key key, this.idCharacter}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> implements GameListener {
  GameController _controller = GameController();

  @override
  void initState() {
    _controller.setListener(this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width > 800
        ? isMobile = false
        : isMobile = true;
    return BonfireWidget(
      gameController: _controller,
      joystick: Joystick(
          directional: JoystickDirectional(
            spriteBackgroundDirectional: Sprite('joystick_background.png'),
            spriteKnobDirectional: Sprite('joystick_knob.png'),
            size: 100,
            isFixed: false,
          ),
          actions: [
            JoystickAction(
              actionId: 0,
              sprite: Sprite('contact_button.png'),
              size: 80,
              margin: EdgeInsets.only(bottom: 50, right: 50),
            ),
            JoystickAction(
              actionId: 1,
              sprite: Sprite('projects_button.png'),
              size: 80,
              margin: isMobile
                  ? EdgeInsets.only(bottom: 120, right: 50)
                  : EdgeInsets.only(bottom: 50, right: 130),
            ),
          ]),
      player: MyPlayer(
        Position(22 * 32.0, 21 * 32.0),
        _getSprite(widget.idCharacter),
      ),
      map: PortfolioMap.map(),
      background: BackgroundColorGame(Color.fromRGBO(22, 12, 30, 1)),
      decorations: PortfolioMap.decorations(),
      constructionMode: false,
    );
  }

  SpriteSheet _getSprite(int index) {
    switch (index) {
      case 0:
        return SpriteSheetConfig.player1;
        break;
      case 1:
        return SpriteSheetConfig.player2;
        break;
      case 2:
        return SpriteSheetConfig.player3;
        break;
      case 3:
        return SpriteSheetConfig.player4;
        break;
      case 4:
        return SpriteSheetConfig.player5;
        break;
      default:
        return SpriteSheetConfig.player1;
        break;
    }
  }

  @override
  void changeCountLiveEnemies(int count) {}

  @override
  void updateGame() {}
}
