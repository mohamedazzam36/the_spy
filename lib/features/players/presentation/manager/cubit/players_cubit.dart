import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit({required this.playersRepo}) : super(PlayersInitial());
  final PlayersRepo playersRepo;
  List<PlayerModel> playersList = [];

  fetchPlayersData() {
    playersList = playersRepo.fetchPlayersData();
    emit(PlayersSuccess());
  }

  void addPlayer(PlayerModel player) {
    playersRepo.addPlayer(player);
    emit(PlayersSuccess());
  }
}
