import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_header.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_image_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_footer_section.dart';

class PortraitLeaderboardViewBody extends StatelessWidget {
  const PortraitLeaderboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 36),
      child: Column(
        children: [
          const LeaderboardHeader(),
          const SizedBox(height: 20),
          const Flexible(
            child: FittedBox(fit: BoxFit.scaleDown, child: LeaderboardImageSection()),
          ),
          const SizedBox(height: 80),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: context.isPortrait ? context.height * 0.37 : context.height * 0.7,
            ),
            child: const LeaderboardFooterSection(),
          ),
        ],
      ),
    );
  }
}
