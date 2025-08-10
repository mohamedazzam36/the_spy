import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class GameModeModel {
  final GameModesEnum currentMode;
  late String playersShowedWord, spysShowedWord;
  List<PlayerModel> spysList = [];
  late List<PlayerModel> playersList;
  late List<dynamic> resultList;

  GameModeModel({required this.currentMode});
}
