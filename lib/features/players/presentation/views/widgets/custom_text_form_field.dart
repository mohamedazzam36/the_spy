import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/functions/validate_players.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

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
        validator: (value) => validatePlayers(
          name: value,
          playersList: playersModel.playersList,
        ),
        style: Styles.styleSemiBold24(context).copyWith(color: AppColors.coffeeColor),
        cursorColor: AppColors.coffeeColor,
        decoration: InputDecoration(
          errorStyle: Styles.extraLight16(context),
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: IconButton(
              onPressed: () => validatePlayer(context),
              icon: SvgPicture.asset(
                Assets.imagesAddPlayerIcon,
                width: 40,
              ),
            ),
          ),
          hintText: 'addPlayer'.tr(),
          hintStyle: Styles.styleSemiBold24(
            context,
          ).copyWith(color: AppColors.whiteColor.withAlpha(150)),
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
        context.playersCubit.addPlayer(PlayerModel(name: controller.text));
        context.playersCubit.fetchPlayersData();
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
      borderSide: const BorderSide(color: Colors.red, width: 2),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.coffeeColor, width: 2),
    );
  }
}
