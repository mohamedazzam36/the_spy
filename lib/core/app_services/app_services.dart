import 'package:the_spy/core/enums/categories_enum.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class AppServices {
  static late CategoriesEnum currentCategory;
  static late SubGameModes currentSubMode;
  static late MainGameModes currentMainMode;
  static late List<PlayerModel> playersList;
}
