import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view_item.dart';

class CustomPlayersListView extends StatefulWidget {
  const CustomPlayersListView({super.key});

  @override
  State<CustomPlayersListView> createState() => _CustomPlayersListViewState();
}

class _CustomPlayersListViewState extends State<CustomPlayersListView> {
  @override
  void initState() {
    accessPlayerCubit(context).fetchPlayersData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersCubit, PlayersState>(
      buildWhen: (previous, current) => current is PlayersSuccess,
      builder: (context, state) {
        List<PlayerModel> playersList = accessPlayerCubit(context).gameModeModel.playersList;
        return ListView.builder(
          itemCount: playersList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: CustomPlayerListViewItem(
                player: playersList[index],
              ),
            );
          },
        );
      },
    );
  }
}
