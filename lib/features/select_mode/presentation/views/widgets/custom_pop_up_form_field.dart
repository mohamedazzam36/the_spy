import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_spy/core/functions/form_field_helper.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class CustomPopUpFormField extends StatelessWidget {
  const CustomPopUpFormField({super.key, required this.controller, required this.minimumModeNum});

  final TextEditingController controller;
  final int minimumModeNum;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 20,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: Styles.styleSemiBold24(context).copyWith(color: AppColors.coffeeColor),
      cursorColor: AppColors.coffeeColor,
      validator: (value) {
        if (value == null || value.isEmpty || int.parse(value) < minimumModeNum) {
          return '${'theMinimumNumberIs'.tr()}  $minimumModeNum';
        }
        return null;
      },
      decoration: InputDecoration(
        errorStyle: Styles.extraLight16(context).copyWith(fontSize: 12),
        hintText: 'enterTheNumber'.tr(),
        hintStyle: Styles.styleSemiBold24(
          context,
        ).copyWith(color: AppColors.whiteColor.withAlpha(150)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          // vertical: 16,
        ),
        enabledBorder: FormFieldHelper.buildBorder(),
        focusedBorder: FormFieldHelper.buildBorder(),
        errorBorder: FormFieldHelper.buildErrorBorder(),
        focusedErrorBorder: FormFieldHelper.buildErrorBorder(),
      ),
    );
  }
}
