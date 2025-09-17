import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/game_services/modes_service.dart';
import 'package:the_spy/core/repos/game_repo.dart';
import 'package:the_spy/core/utils/service_locator.dart';

class Classic extends GameRepo {
  @override
  setPlayersShowedWord() {
    ModesService.setClassicPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    ModesService.setClassicSpysShowedWord();
  }
}

class Blind extends GameRepo {
  @override
  setPlayersShowedWord() {
    ModesService.setBlindPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    ModesService.setBlindSpysShowedWord();
  }
}

class Duo extends GameRepo {
  @override
  setPlayersShowedWord() {
    ModesService.setClassicPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    String spysShowedWord = 'hideAll'.tr();
    for (var element in playersModel.spysList) {
      spysShowedWord += '\n ${element.name}';
    }
    playersModel.spysShowedWord = spysShowedWord;
  }
}
