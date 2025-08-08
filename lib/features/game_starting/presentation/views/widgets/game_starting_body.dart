import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_word_reveal_widget.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_player_reveal_widget.dart';

class WordRevealBody extends StatefulWidget {
  const WordRevealBody({super.key});

  @override
  State<WordRevealBody> createState() => _WordRevealBodyState();
}

class _WordRevealBodyState extends State<WordRevealBody> {
  List<PlayerModel> playersRandomList = [];
  int playerIndex = 0;
  String? wordName;
  @override
  void initState() {
    playersRandomList = accessPlayerCubit(context).playersList..shuffle();
    wordName =
        accessAppCubit(context).currentCategoryNames![Random().nextInt(
          accessAppCubit(context).currentCategoryNames!.length,
        )];
    accessPlayerCubit(context).theSpy =
        playersRandomList[Random().nextInt(playersRandomList.length)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersCubit, PlayersState>(
      builder: (context, state) {
        return CustomwordRevealWidget.CustomWordRevealWidget(
          wordName: wordName!,
        );
      },
    );
  }
}
