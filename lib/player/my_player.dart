import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:portfolio/game.dart';
import 'package:portfolio/map/portfolio_map.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:portfolio/utils/launch_url.dart';
import 'package:portfolio/utils/content_card.dart';
import 'package:easy_localization/easy_localization.dart';

class MyPlayer extends SimplePlayer {
  final Position initPosition;
  double initSpeed = 120;
  bool isOpenC = false;
  bool isOpenP = false;

  static const String email = 'caiofapedroso@gmail.com';

  MyPlayer(this.initPosition, SpriteSheet spriteSheet)
      : super(
          animIdleBottom: spriteSheet.createAnimation(0, stepTime: 0.1),
          animIdleLeft: spriteSheet.createAnimation(1, stepTime: 0.1),
          animIdleRight: spriteSheet.createAnimation(2, stepTime: 0.1),
          animIdleTop: spriteSheet.createAnimation(3, stepTime: 0.1),
          animRunBottom: spriteSheet.createAnimation(4, stepTime: 0.1),
          animRunLeft: spriteSheet.createAnimation(5, stepTime: 0.1),
          animRunRight: spriteSheet.createAnimation(6, stepTime: 0.1),
          animRunTop: spriteSheet.createAnimation(7, stepTime: 0.1),
          width: 36,
          height: 36,
          initPosition: initPosition,
          speed: PortfolioMap.tileSize * 3,
          collision: Collision(
              height: PortfolioMap.tileSize / 2,
              width: PortfolioMap.tileSize / 2),
          sizeCentralMovementWindow:
              Size(PortfolioMap.tileSize * 2, PortfolioMap.tileSize * 2),
        );

  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    this.speed = initSpeed * event.intensity;
    super.joystickChangeDirectional(event);
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    // CONTACT BUTTON
    if (event.id == 0 && !isOpenC) {
      isOpenC = true;
      new Alert(
        context: this.gameRef.context,
        type: AlertType.none,
        title: "contact_label".tr(),
        style: AlertStyle(
          isOverlayTapDismiss: false,
          overlayColor: Colors.black26,
          titleStyle: TextStyle(fontSize: 32),
          backgroundColor: Colors.grey[100],
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                iconSize: 64,
                icon: Icon(Icons.mail),
                tooltip: 'E-mail',
                onPressed: () {
                  launchURL('mailto:<caiofapedroso@gmail.com>');
                }),
            IconButton(
                iconSize: 64,
                icon: Icon(Icons.code),
                tooltip: 'Github',
                onPressed: () {
                  launchURL('https://github.com/KyleKun');
                }),
            IconButton(
              iconSize: 64,
              icon: Icon(Icons.person),
              tooltip: 'Linkedin',
              onPressed: () {
                launchURL('https://www.linkedin.com/in/caio-pedroso/');
              },
            )
          ],
        ),
        desc: "contact_desc".tr(),
        buttons: [
          DialogButton(
            color: Colors.blueAccent,
            child: Text(
              "back_button".tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.pop(this.gameRef.context);
              isOpenC = false;
            },
            width: 120,
          ),
        ],
      ).show();
    }

    // PROJECTS BUTTON
    if (event.id == 1 && !isOpenP) {
      isOpenP = true;
      new Alert(
        context: this.gameRef.context,
        type: AlertType.none,
        title: 'projects_label'.tr(),
        style: AlertStyle(
          isOverlayTapDismiss: false,
          overlayColor: Colors.black26,
          titleStyle: TextStyle(fontSize: 28),
          backgroundColor: Colors.grey[100],
        ),
        content: SizedBox(
          width: 500,
          height: 300,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.linear,
            animationDuration: Duration(milliseconds: 800),
            dotSize: 6.0,
            dotIncreasedColor: Colors.grey[600],
            showIndicator: true,
            autoplayDuration: Duration(milliseconds: 10500),
            images: [
              ContentCard(
                      isMobile ? 'Business\nMonsters' : 'Business Monsters',
                      'bm_desc'.tr(),
                      'https://www.producthunt.com/posts/business-monsters',
                      'assets/images/projects/business-monsters.png')
                  .build(gameRef.context),
              ContentCard(
                      'FindSeguros',
                      'findseguros_desc'.tr(),
                      'https://findsegurosweb.web.app/#/',
                      'assets/images/projects/findseguros.png')
                  .build(gameRef.context),
              ContentCard(
                      'Hackamoon',
                      'hackamoon_desc'.tr(),
                      'https://www.producthunt.com/posts/hackamoon',
                      'assets/images/projects/hackamoon.png')
                  .build(gameRef.context),
              ContentCard(
                      'Petoshopo',
                      'petoshopo_desc'.tr(),
                      'https://www.producthunt.com/posts/petoshopo',
                      'assets/images/projects/petoshopo.png')
                  .build(gameRef.context),
              ContentCard(
                      'LocalMarket',
                      'localmarket_desc'.tr(),
                      'https://www.youtube.com/watch?v=KaWxCabdIs4&feature=youtu.be',
                      'assets/images/projects/localmarket.png')
                  .build(gameRef.context),
              ContentCard(
                      'Apex Plus',
                      'apex_desc'.tr(),
                      'https://www.producthunt.com/posts/apex-plus',
                      'assets/images/projects/apex-plus.png')
                  .build(gameRef.context),
            ],
          ),
        ),
        buttons: [
          DialogButton(
            color: Colors.blueAccent,
            child: Text(
              "back_button".tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.pop(this.gameRef.context);
              isOpenP = false;
            },
            width: 120,
          ),
        ],
      ).show();
    }
    super.joystickAction(event);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  @override
  void render(Canvas c) {
    super.render(c);
  }
}
