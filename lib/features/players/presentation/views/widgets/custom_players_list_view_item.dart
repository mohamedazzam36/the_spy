import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

class CustomPlayerListViewItem extends StatelessWidget {
  const CustomPlayerListViewItem({
    super.key,
    required this.player,
  });

  final PlayerModel player;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(
              player.name,
              style: Styles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.black),
            ),
            const Spacer(),
            IconButton(
              onPressed: () async {
                await player.delete();
                BlocProvider.of<PlayersCubit>(context).fetchPlayersData();
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
