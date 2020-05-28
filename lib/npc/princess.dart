import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart' as FlameAnimation;
import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio/game.dart';

class Princess extends GameDecoration {
  bool _showConversation = false;
  Princess(
    Position position,
  ) : super(
          animation: FlameAnimation.Animation.sequenced(
            "npc/princess_idle.png",
            2,
            textureWidth: 32,
            textureHeight: 32,
            stepTime: 0.7,
          ),
          initPosition: position,
          width: 54,
          height: 54,
        );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player.positionInWorld.top <= 310 &&
        gameRef.player.positionInWorld.right > 742 &&
        gameRef.player.positionInWorld.right < 764) {
      if (!_showConversation) {
        _showConversation = true;
        _showAchievements();
      }
    }
  }

  Say talkToPlayer(phrase) {
    return Say(
      phrase,
      Flame.util.animationAsWidget(
        Position(80, 100),
        FlameAnimation.Animation.sequenced(
          "npc/princess_idle.png",
          4,
          textureWidth: 32,
          textureHeight: 32,
        ),
      ),
      personDirection: PersonDirection.LEFT,
    );
  }

  void _showAchievements() {
    TalkDialog.show(
      gameRef.context,
      [
        talkToPlayer('princess_a'.tr()),
        talkToPlayer('princess_b'.tr()),
        talkToPlayer('princess_c'.tr()),
        talkToPlayer('princess_d'.tr()),
        talkToPlayer('princess_e'.tr()),
        talkToPlayer('princess_f'.tr())
      ],
      boxTextHeight: isMobile ? 250 : 100,
    );
  }
}
