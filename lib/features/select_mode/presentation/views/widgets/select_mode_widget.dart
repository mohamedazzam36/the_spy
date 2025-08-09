import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_decorated_container.dart';
import 'package:the_spy/generated/l10n.dart';

class SelectModeWidget extends StatelessWidget {
  const SelectModeWidget({super.key, required this.gameModeModel});

  final GameModeModel gameModeModel;

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
                  gameModeModel.currentMode.getModeInfo(context).backGroundColor,
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
                      gameModeModel: gameModeModel,
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () {
                        accessAppCubit(context).currentMode = gameModeModel.currentMode;
                        accessPlayerCubit(context).gameModeModel = GameModeModel(
                          currentMode: gameModeModel.currentMode,
                        );
                        context.push(
                          AppRouter.kHomeView,
                        );
                      },
                      text: S.of(context).select,
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
