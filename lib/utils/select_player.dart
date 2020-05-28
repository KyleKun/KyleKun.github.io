import 'package:easy_localization/easy_localization.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/game.dart';
import 'package:portfolio/player/spritesheet_config.dart';

class SelectPlayer extends StatefulWidget {
  @override
  _SelectPlayerState createState() => _SelectPlayerState();
}

class _SelectPlayerState extends State<SelectPlayer> {
  int count = 0;
  List<SpriteSheet> sprites = List();

  @override
  void initState() {
    sprites.add(SpriteSheetConfig.player1);
    sprites.add(SpriteSheetConfig.player2);
    sprites.add(SpriteSheetConfig.player3);
    sprites.add(SpriteSheetConfig.player4);
    sprites.add(SpriteSheetConfig.player5);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(22, 2, 40, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "select_label".tr(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width > 800 ? 32 : 20),
            ),
            Expanded(
              child: _buildCharacters(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      color: Color(0xff7B5E7B),
                      child: Text(
                        'enter_label'.tr(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: _joinGame,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: new TextStyle(
                                fontFamily: 'Pixel',
                                color: Colors.white,
                                fontSize: 12),
                            children: <TextSpan>[
                              new TextSpan(text: 'flutter_label'.tr()),
                              new TextSpan(
                                  text: 'Flutter.',
                                  style: new TextStyle(
                                      fontFamily: 'Pixel',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCharacters() {
    return Row(
      children: <Widget>[
        Expanded(
          child: count == 0
              ? SizedBox.shrink()
              : Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: RaisedButton(
                      color: Color(0xff7B5E7B),
                      padding: EdgeInsets.all(0),
                      child: Center(
                          child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: _previous,
                    ),
                  ),
                ),
        ),
        Expanded(
          child: Center(
            child: Flame.util.animationAsWidget(Position(100, 100),
                sprites[count].createAnimation(5, stepTime: 0.1)),
          ),
        ),
        Expanded(
          child: count == sprites.length - 1
              ? SizedBox.shrink()
              : Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: RaisedButton(
                      color: Color(0xff7B5E7B),
                      padding: EdgeInsets.all(0),
                      child: Center(
                          child: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: _next,
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  void _next() {
    if (count < sprites.length - 1) {
      setState(() {
        count++;
      });
    }
  }

  void _previous() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  void _joinGame() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Game(
          idCharacter: count,
        ),
      ),
    );
  }
}
