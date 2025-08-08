import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_word_reveal_widget.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

class GameStartingBody extends StatefulWidget {
  const GameStartingBody({super.key});

  @override
  State<GameStartingBody> createState() => _GameStartingBodyState();
}

class _GameStartingBodyState extends State<GameStartingBody> {
  List<PlayerModel> playersRandomList = [];
  int playerIndex = 0;
  String? wordName;
  @override
  void initState() {
    initGameStarting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersCubit, PlayersState>(
      builder: (context, state) {
        return CustomWordRevealWidget(
          wordName: wordName!,
        );
      },
    );
  }

  void initGameStarting() {
    playersRandomList = GameLogicService.getPlayersRandomList(context);
    wordName = GameLogicService.getRandomCategoryWord(context);
    GameLogicService.getSpyName(context, playersRandomList: playersRandomList);
  }
}
