import 'package:hive/hive.dart';
part 'player_model.g.dart';

@HiveType(typeId: 0)
class PlayerModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  int score;

  PlayerModel({required this.name, this.score = 0});

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is PlayerModel && other.name == name);

  PlayerModel copyWith({String? name, int? score}) {
    return PlayerModel(
      name: name ?? this.name,
      score: score ?? this.score,
    );
  }
}
