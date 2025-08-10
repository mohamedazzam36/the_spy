import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_decorated_container.dart';

class SelectModeWidget extends StatelessWidget {
  const SelectModeWidget({super.key, required this.currentMode});

  final GameModesEnum currentMode;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  currentMode.getModeInfo.backGroundColor,
                  Colors.deepPurple,
                  Colors.deepPurple[300]!,
                  const Color.fromARGB(255, 243, 205, 225),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    SelectModeDecoratedContainer(
                      currentMode: currentMode,
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () {
                        appServices.currentMode = currentMode;
                        context.push(
                          AppRouter.kHomeView,
                        );
                      },
                      text: 'select'.tr(),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
