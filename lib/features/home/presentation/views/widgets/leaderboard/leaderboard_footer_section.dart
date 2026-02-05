import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/custom_nicknames_dialog.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_edit_button.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_list_view_section.dart';

class LeaderboardFooterSection extends StatelessWidget {
  const LeaderboardFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8, bottom: 16, left: 8, right: 8),
          decoration: BoxDecoration(
            color: AppColors.coffeeColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Builder(
                builder: (context) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LeaderboardEditButton(),
                      GestureDetector(
                        onTap: () => showGeneralDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierLabel: '',
                          pageBuilder: (context, animation, secondaryAnimation) => const Center(
                            child: CustomNicknamesDialog(),
                          ),
                        ),
                        child: Image.asset(
                          Assets.imagesNicknamesIcon,
                          width: 35,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const Expanded(child: LeaderboardListViewSection()),
            ],
          ),
        ),
        Positioned(
          top: -40,
          child: CircleAvatar(
            radius: 45,
            backgroundColor: AppColors.coffeeColor,
            child: SvgPicture.asset(
              Assets.imagesMainLeaderboardIcon,
              width: 60,
            ),
          ),
        ),
      ],
    );
  }
}
