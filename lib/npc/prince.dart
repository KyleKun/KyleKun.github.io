import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart' as FlameAnimation;
import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio/game.dart';

class Prince extends GameDecoration {
  bool _showConversation = false;
  Prince(
    Position position,
  ) : super(
          animation: FlameAnimation.Animation.sequenced(
            "npc/prince_idle.png",
            2,
            textureWidth: 32,
            textureHeight: 32,
            stepTime: 0.8,
          ),
          initPosition: position,
          width: 54,
          height: 54,
        );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player.positionInWorld.top <= 310 &&
        gameRef.player.positionInWorld.right > 680 &&
        gameRef.player.positionInWorld.right < 702) {
      if (!_showConversation) {
        _showConversation = true;
        _showExperience();
      }
    }
  }

  Say talkToPlayer(phrase) {
    return Say(
      phrase,
      Flame.util.animationAsWidget(
        Position(80, 100),
        FlameAnimation.Animation.sequenced(
          "npc/prince_idle.png",
          4,
          textureWidth: 32,
          textureHeight: 32,
        ),
      ),
      personDirection: PersonDirection.LEFT,
    );
  }

  void _showExperience() {
    TalkDialog.show(
      gameRef.context,
      [
        talkToPlayer('prince_a'.tr()),
        talkToPlayer('prince_b'.tr()),
        talkToPlayer('prince_c'.tr()),
        talkToPlayer('prince_d'.tr()),
        talkToPlayer('prince_e'.tr()),
        talkToPlayer('prince_f'.tr()),
        talkToPlayer('prince_g'.tr()),
        talkToPlayer('prince_h'.tr()),
        talkToPlayer('prince_i'.tr()),
        talkToPlayer('prince_j'.tr()),
      ],
      boxTextHeight: isMobile ? 250 : 100,
    );
  }
}
