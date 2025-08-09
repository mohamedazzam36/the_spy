import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class GameModeModel {
  final GameModesEnum gameModesEnum;
  late String showedWord, spysShowedWord;
  late List<PlayerModel> spysList;
  late List<PlayerModel> playersList;

  GameModeModel({required this.gameModesEnum});
}
