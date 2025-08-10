import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

part 'game_setup_state.dart';

class GameSetupCubit extends Cubit<GameSetupState> {
  GameSetupCubit() : super(GameStartInitial());
  int currentPlayerIndex = 0;

  void switchBetweenPlayersAndWord() {
    if (currentPlayerIndex < playersModel.playersList.length) {
      PlayerModel currentPlayer = playersModel.playersList[currentPlayerIndex];
      if (state is PlayerReveal) {
        bool isSpy;
        isSpy = playersModel.spysList.any((element) => currentPlayer.name == element.name);
        emit(WordReveal(isSpy ? playersModel.spysShowedWord : playersModel.playersShowedWord));
        currentPlayerIndex++;
      } else {
        emit(PlayerReveal(player: playersModel.playersList[currentPlayerIndex]));
      }
    } else {
      emit(QuestionsStart());
    }
  }

  void startGame() {
    currentPlayerIndex = 0;
    appServices.currentMode.setGameStarting;
    emit(PlayerReveal(player: playersModel.playersList[currentPlayerIndex]));
  }
}
