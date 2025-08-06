import 'package:flutter/material.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view_item.dart';

class CustomPlayersListView extends StatelessWidget {
  const CustomPlayersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: CustomPlayerListViewItem(text: index.toString()),
        );
      },
    );
  }
}
