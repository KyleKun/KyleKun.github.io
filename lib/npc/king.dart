import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart' as FlameAnimation;
import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio/game.dart';

class King extends GameDecoration {
  bool _showConversation = false;
  King(
    Position position,
  ) : super(
          animation: FlameAnimation.Animation.sequenced(
            "npc/king_idle.png",
            2,
            textureWidth: 32,
            textureHeight: 32,
            stepTime: 1.1,
          ),
          initPosition: position,
          width: 54,
          height: 54,
        );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player.positionInWorld.top <= 310 &&
        gameRef.player.positionInWorld.right > 551 &&
        gameRef.player.positionInWorld.right < 573) {
      if (!_showConversation) {
        _showConversation = true;
        _showSkills();
      }
    }
  }

  Say talkToPlayer(phrase) {
    return Say(
      phrase,
      Flame.util.animationAsWidget(
        Position(80, 100),
        FlameAnimation.Animation.sequenced(
          "npc/king_idle.png",
          4,
          textureWidth: 32,
          textureHeight: 32,
        ),
      ),
      personDirection: PersonDirection.LEFT,
    );
  }

  void _showSkills() {
    TalkDialog.show(
      gameRef.context,
      [
        talkToPlayer('king_a'.tr()),
        talkToPlayer('king_b'.tr()),
        talkToPlayer('king_c'.tr()),
        talkToPlayer('king_d'.tr()),
        talkToPlayer('king_e'.tr()),
      ],
      boxTextHeight: isMobile ? 250 : 100,
    );
  }
}
