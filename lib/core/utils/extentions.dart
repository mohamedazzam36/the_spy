import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/generated/l10n.dart';

extension ModesName on Mode {
  String getModeName(BuildContext context) {
    switch (this) {
      case Mode.normal:
        return S.of(context).normalModeTitle;
      case Mode.blind:
        return S.of(context).blindModeTitle;
    }
  }
}

extension PlayersStateX on PlayersState {
  bool gameStartingStates() {
    return this is PlayerReveal ||
        this is WordReveal ||
        this is PlayersFinished;
  }
}
