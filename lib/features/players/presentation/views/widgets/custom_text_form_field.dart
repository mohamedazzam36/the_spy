import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/generated/l10n.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.styleSemiBold24(context),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            size: 36,
            Icons.add_box_rounded,
            color: Colors.white,
          ),
        ),
        hintText: S.of(context).addPlayer,
        hintStyle: Styles.styleSemiBold24(
          context,
        ).copyWith(color: Colors.white.withAlpha(150)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: buildErrorBorder(),
        focusedErrorBorder: buildErrorBorder(),
      ),
    );
  }

  OutlineInputBorder buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
