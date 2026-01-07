import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/functions/helper_functions.dart';
import 'package:the_spy/core/functions/show_main_dialog.dart';
import 'package:the_spy/core/utils/app_images.dart';

import '../../../../../../core/widgets/settings_and_leaderboard_dialog.dart';

class LanguagesAnimationSection extends StatefulWidget {
  const LanguagesAnimationSection({super.key});

  @override
  State<LanguagesAnimationSection> createState() => _LanguagesAnimationSectionState();
}

class _LanguagesAnimationSectionState extends State<LanguagesAnimationSection> {
  late bool isArabicSelected;

  @override
  void didChangeDependencies() {
    isArabicSelected = isRtl(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        AnimatedScale(
          scale: !isArabicSelected ? 1.3 : 0.8,
          duration: const Duration(
            milliseconds: 500,
          ),
          child: GestureDetector(
            onTap: () {
              if (isArabicSelected) {
                setState(() {
                  isArabicSelected = false;
                });
                showMainDialog(
                  context,
                  onCancel: () {
                    setState(() {
                      isArabicSelected = true;
                    });
                  },
                  SettingsAndLeaderboardDialog(
                    title: 'changeLanguageEnsure',
                    onNoPressed: () {
                      setState(() {
                        isArabicSelected = true;
                      });
                      Navigator.pop(context);
                    },
                    onYesPressed: () {
                      context.setLocale(const Locale('en'));
                    },
                  ),
                );
              }
            },
            child: Image.asset(
              Assets.imagesAmircaIcon,
              width: 32,
            ),
          ),
        ),
        AnimatedScale(
          scale: isArabicSelected ? 1.45 : 0.9,
          duration: const Duration(
            milliseconds: 500,
          ),
          child: GestureDetector(
            onTap: () {
              if (!isArabicSelected) {
                setState(() {
                  isArabicSelected = true;
                });
                showMainDialog(
                  context,
                  onCancel: () {
                    setState(() {
                      isArabicSelected = false;
                    });
                  },
                  SettingsAndLeaderboardDialog(
                    title: 'changeLanguageEnsure',
                    onNoPressed: () {
                      setState(() {
                        isArabicSelected = false;
                      });
                      Navigator.pop(context);
                    },
                    onYesPressed: () {
                      context.setLocale(const Locale('ar'));
                    },
                  ),
                );
              }
            },
            child: Image.asset(
              Assets.imagesEgyptIcon,
              width: 32,
            ),
          ),
        ),
      ],
    );
  }
}
