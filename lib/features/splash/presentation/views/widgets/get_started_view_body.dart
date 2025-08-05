import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/splash/presentation/views/widgets/get_started_decorated_container.dart';
import 'package:the_spy/generated/l10n.dart';

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
                  kPrimaryColor,
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
                    const GetStartedDecoratedContainer(),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () {
                        context.pushReplacement(AppRouter.kSelectModeView);
                      },
                      text: S.of(context).start,
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
