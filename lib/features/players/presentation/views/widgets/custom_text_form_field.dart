import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/generated/l10n.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController controller = TextEditingController();
  AutovalidateMode? autovalidateMode;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: (value) => validatePlayer(context),
        validator: (value) =>
            accessPlayerCubit(context).validatePlayer(context, name: value),
        style: Styles.styleSemiBold24(context),
        cursorColor: kWhiteColor,
        decoration: InputDecoration(
          errorStyle: Styles.extraLight16(context),
          suffixIcon: IconButton(
            onPressed: () => validatePlayer(context),
            icon: const Icon(
              size: 36,
              Icons.add_box_rounded,
              color: kWhiteColor,
            ),
          ),
          hintText: S.of(context).addPlayer,
          hintStyle: Styles.styleSemiBold24(
            context,
          ).copyWith(color: kWhiteColor.withAlpha(150)),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          errorBorder: buildErrorBorder(),
          focusedErrorBorder: buildErrorBorder(),
        ),
      ),
    );
  }

  void validatePlayer(BuildContext context) {
    if (formKey.currentState!.validate()) {
      setState(() {
        accessPlayerCubit(
          context,
        ).addPlayer(PlayerModel(name: controller.text));
        accessPlayerCubit(context).fetchPlayersData();
        autovalidateMode = AutovalidateMode.disabled;
        controller.clear();
      });
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
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
        color: kWhiteColor,
      ),
    );
  }
}
