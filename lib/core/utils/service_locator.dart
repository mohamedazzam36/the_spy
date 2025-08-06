import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_spy/constants.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final playersBox = await Hive.openBox<PlayerModel>(kPlayerBox);
  final applicationBox = await Hive.openBox<dynamic>(kApplicationBox);

  getIt.registerSingleton<Box<PlayerModel>>(playersBox);
  getIt.registerSingleton<Box<dynamic>>(applicationBox);
}
