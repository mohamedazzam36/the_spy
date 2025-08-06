import 'package:hive/hive.dart';
part 'player_model.g.dart';

@HiveType(typeId: 0)
class PlayerModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  int score;

  PlayerModel({required this.name, this.score = 0});
}
