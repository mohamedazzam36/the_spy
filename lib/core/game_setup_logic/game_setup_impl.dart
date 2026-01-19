import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/game_services/modes_service.dart';
import 'package:the_spy/core/game_setup_logic/game_setup.dart';
import 'package:the_spy/core/models/modes_settings.dart';

class Classic extends GameSetup {
  @override
  setPlayersShowedWord() {
    ModesService.setClassicPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    ModesService.setClassicSpysShowedWord();
  }
}

class Blind extends GameSetup {
  @override
  setPlayersShowedWord() {
    ModesService.setBlindPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    ModesService.setBlindSpysShowedWord();
  }
}

class Duo extends GameSetup {
  @override
  setPlayersShowedWord() {
    ModesService.setClassicPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    String spysShowedWord = 'hideAll'.tr();
    for (var element in NormalModeSettings.spysList) {
      spysShowedWord += '\n ${element.name}';
    }
    NormalModeSettings.spysShowedWord = spysShowedWord;
  }
}
