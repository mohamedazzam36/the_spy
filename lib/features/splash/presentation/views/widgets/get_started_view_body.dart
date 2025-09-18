import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:the_spy/constants.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/splash/presentation/views/widgets/get_started_decorated_container.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

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
                  AppColors.primaryColor,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    GetStartedDecoratedContainer(
                      text: 'gameDescription'.tr(),
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () async {
                        final appBox = getIt.get<Box<dynamic>>();
                        await appBox.put(kIsFirstStart, false);
                        context.go(AppRouter.kSelectModeView);
                      },
                      text: 'start'.tr(),
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
