import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view_item.dart';

class CustomPlayersListView extends StatefulWidget {
  const CustomPlayersListView({super.key});

  final List<String> iconsPath = const [
    Assets.imagesBluePlayerIcon,
    Assets.imagesRedPlayerIcon,
    Assets.imagesOrangePlayerIcon,
    Assets.imagesPurplePlayerIcon,
    Assets.imagesBlackPlayerIcon,
    Assets.imagesClayPlayerIcon,
    Assets.imagesGreenPlayerIcon,
    Assets.imagesPinkPlayerIcon,
  ];

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
        List<PlayerModel> playersList = playersModel.playersList;
        return ListView.builder(
          itemCount: playersList.length,
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: CustomPlayerListViewItem(
                player: playersList[index],
                iconPath: widget.iconsPath[index % widget.iconsPath.length],
              ),
            );
          },
        );
      },
    );
  }
}
