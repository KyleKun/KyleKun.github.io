import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart' as FlameAnimation;
import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio/game.dart';

class Queen extends GameDecoration {
  bool _showConversation = false;
  Queen(
    Position position,
  ) : super(
          animation: FlameAnimation.Animation.sequenced("npc/queen_idle.png", 2,
              textureWidth: 32, textureHeight: 32, stepTime: 1.0),
          initPosition: position,
          width: 54,
          height: 54,
        );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player.positionInWorld.top <= 310 &&
        gameRef.player.positionInWorld.right > 613 &&
        gameRef.player.positionInWorld.right < 635) {
      if (!_showConversation) {
        _showConversation = true;
        _showEducation();
      }
    }
  }

  Say talkToPlayer(phrase) {
    return Say(
      phrase,
      Flame.util.animationAsWidget(
        Position(80, 100),
        FlameAnimation.Animation.sequenced(
          "npc/queen_idle.png",
          4,
          textureWidth: 32,
          textureHeight: 32,
        ),
      ),
      personDirection: PersonDirection.LEFT,
    );
  }

  void _showEducation() {
    TalkDialog.show(
      gameRef.context,
      [
        talkToPlayer('queen_a'.tr()),
        talkToPlayer('queen_b'.tr()),
        talkToPlayer('queen_c'.tr()),
        talkToPlayer('queen_d'.tr()),
        talkToPlayer('queen_e'.tr()),
        talkToPlayer('queen_f'.tr()),
        talkToPlayer('queen_g'.tr()),
      ],
      boxTextHeight: isMobile ? 250 : 100,
    );
  }
}
