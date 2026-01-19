import 'dart:async';

import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/models/modes_settings.dart';

class PlayersSwapingAnimationController {
  int delay = 80;
  int currentPlayerIndex = 0;
  int currentSpyIndex = 0;
  Timer? timer;
  bool isSlowing = false;
  bool isSpyShowed = false;
  bool isFinished = false;

  final VoidCallback onSpysShown;
  final VoidCallback onPlayersShown;
  final VoidCallback onFinish;

  PlayersSwapingAnimationController({
    required this.onSpysShown,
    required this.onPlayersShown,
    required this.onFinish,
  });

  void startAnimation() async {
    for (int i = 0; i < NormalModeSettings.spysList.length; i++) {
      isSlowing = false;
      delay = 80;
      isSpyShowed = false;
      Timer(const Duration(seconds: 3), () {
        isSlowing = true;
      });

      await runAnimation();
      await Future.delayed(const Duration(seconds: 2));
      currentSpyIndex++;
    }

    currentSpyIndex--;
    isFinished = true;
    onFinish();
  }

  Future<void> runAnimation() async {
    final completer = Completer<void>();
    animate(completer);
    return completer.future;
  }

  void animate(Completer<void> completer) {
    timer = Timer(
      Duration(milliseconds: delay),
      () {
        currentPlayerIndex = (currentPlayerIndex + 1) % AppServices.playersList.length;
        onPlayersShown();
        if (isSlowing) {
          delay += 15;
        }
        if (delay < 300) {
          animate(completer);
        } else {
          isSpyShowed = true;
          onSpysShown();
          return completer.complete();
        }
      },
    );
  }

  void dispose() {
    timer?.cancel();
  }
}
