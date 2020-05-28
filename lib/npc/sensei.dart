import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart' as FlameAnimation;
import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio/game.dart';

class Sensei extends GameDecoration {
  bool _showConversation = false;
  Sensei(
    Position position,
  ) : super(
            sprite: Sprite('npc/sensei.png'),
            initPosition: position,
            width: 32,
            height: 32,
            collision: Collision(
              width: 24,
              height: 28,
              align: CollisionAlign.TOP_CENTER,
            ));

  @override
  void update(double dt) {
    super.update(dt);
    this.seePlayer(
        observed: (player) {
          if (!_showConversation) {
            _showConversation = true;
            _showEmote(emote: 'surprised.png');
            Future.delayed(const Duration(milliseconds: 1000), () {
              _showIntroduction();
            });
          }
        },
        visionCells: 2);
  }

  void _showEmote({String emote}) {
    gameRef.add(
      AnimatedFollowerObject(
        animation: FlameAnimation.Animation.sequenced(
          emote,
          8,
          textureWidth: 32,
          textureHeight: 32,
        ),
        target: this,
        width: 16,
        height: 16,
        positionFromTarget: Position(18, -6),
      ),
    );
  }

  Say talkToPlayer(phrase) {
    return Say(
      phrase,
      Flame.util.animationAsWidget(
        Position(80, 100),
        FlameAnimation.Animation.sequenced(
          "npc/sensei_face.png",
          1,
          textureWidth: 20,
          textureHeight: 25,
        ),
      ),
      personDirection: PersonDirection.LEFT,
    );
  }

  void _showIntroduction() {
    TalkDialog.show(
      gameRef.context,
      [
        talkToPlayer('intro_a'.tr()),
        talkToPlayer('intro_b'.tr()),
        talkToPlayer('intro_c'.tr()),
        talkToPlayer('intro_d'.tr()),
        talkToPlayer('intro_e'.tr()),
        talkToPlayer('intro_f'.tr()),
        talkToPlayer('intro_g'.tr()),
        talkToPlayer('intro_h'.tr()),
      ],
      boxTextHeight: isMobile ? 250 : 100,
    );
  }
}
