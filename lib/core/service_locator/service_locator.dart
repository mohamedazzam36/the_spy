import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_spy/core/service_locator/service_locator_constants.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';
import 'package:the_spy/features/players/data/repos/players_repo_impl.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final playersBox = await Hive.openBox<PlayerModel>(ServiceLocatorConstants.playerBox);
  final applicationBox = await Hive.openBox<dynamic>(ServiceLocatorConstants.applicationBox);
  final leaderboardBox = await Hive.openBox<int>(ServiceLocatorConstants.leaderboardBox);
  final PlayersRepo playersRepo = PlayersRepoImpl();

  getIt.registerSingleton<PlayersRepo>(playersRepo);
  getIt.registerSingleton<Box<PlayerModel>>(
    playersBox,
  );
  getIt.registerSingleton<Box<dynamic>>(applicationBox);
  getIt.registerSingleton<Box<int>>(leaderboardBox);
}
