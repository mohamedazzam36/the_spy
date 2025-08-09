import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_view_body.dart';

class SelectModeView extends StatelessWidget {
  const SelectModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          'selectMode'.tr(),
          style: Styles.styleSemiBold35(context),
        ),
      ),
      body: const SelectModeViewBody(),
    );
  }
}
