import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_header.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_image_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_footer_section.dart';

class LandscapeLeaderboardViewBody extends StatelessWidget {
  const LandscapeLeaderboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainAppStructure(
      hasAppBar: false,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
            child: Column(
              children: [
                LeaderboardHeader(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: LeaderboardImageSection(),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: SizedBox(
                    height: 350,
                    child: LeaderboardFooterSection(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
