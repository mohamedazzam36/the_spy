import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/constants/ui_constants.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
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
    context.playersCubit.fetchPlayersData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersCubit, PlayersState>(
      buildWhen: (previous, current) => current is PlayersSuccess,
      builder: (context, state) {
        List<PlayerModel> playersList = AppServices.playersList;
        return ListView.separated(
          itemCount: playersList.length,
          padding: const EdgeInsets.all(0),
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemBuilder: (context, index) {
            return CustomPlayerListViewItem(
              player: playersList[index],
              iconPath: UiConstants.playersIconPaths[index % UiConstants.playersIconPaths.length],
            );
          },
        );
      },
    );
  }
}
