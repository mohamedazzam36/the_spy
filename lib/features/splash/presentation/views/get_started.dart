import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/splash/presentation/views/widgets/get_started_view_body.dart';
import 'package:the_spy/generated/l10n.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          S.of(context).gameIdea,
          style: AppStyles.styleSemiBold35(context),
        ),
      ),
      body: const GetStartedViewBody(),
    );
  }
}
