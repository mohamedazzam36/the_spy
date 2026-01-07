import 'package:flutter/material.dart';
import 'package:the_spy/core/enums/nick_names_enum.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/average_points_list_view.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/logos_list_view.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/nicknames_dialog_header.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/nicknames_list_view.dart';

class CustomNicknamesDialog extends StatelessWidget {
  const CustomNicknamesDialog({
    super.key,
  });

  final List<String> headerList = const ['alias', 'logo', 'averagePoints'];
  final List<NickNamesEnum> nickNames = const [
    NickNamesEnum.theSpy,
    NickNamesEnum.theCharmer,
    NickNamesEnum.theSneaky,
    NickNamesEnum.theWeasel,
    NickNamesEnum.thePhantom,
    NickNamesEnum.theHustler,
    NickNamesEnum.theRookie,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xffac7031),
                Color(0xffe7aa51),
                Color(0xff8d5a1b),
                Color(0xffffe499),
                Color(0xffe7aa51),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.coffeeColor, width: 3),
          ),
          constraints: const BoxConstraints(maxWidth: 500, maxHeight: 420),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const NicknamesDialogHeader(),
              Expanded(
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: NicknamesListView(nickNames: nickNames)),
                      Container(
                        color: AppColors.blackColor,
                        width: 1,
                        height: 270,
                        margin: const EdgeInsets.only(top: 32),
                      ),
                      Expanded(child: LogosListView(nickNames: nickNames)),
                      Container(
                        color: AppColors.blackColor,
                        width: 1,
                        height: 270,
                        margin: const EdgeInsets.only(top: 32),
                      ),
                      Expanded(child: AveragePointsListView(nickNames: nickNames)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
