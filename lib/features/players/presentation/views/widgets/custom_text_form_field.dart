import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/functions/form_field_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_player_add_button.dart';

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
  final focusNode = FocusNode();
  AutovalidateMode? autovalidateMode;

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: TextFormField(
        focusNode: focusNode,
        controller: controller,
        onFieldSubmitted: (value) {
          focusNode.requestFocus();
          validatePlayer(context);
        },
        validator: (value) => FormFieldHelper.validatePlayerName(
          name: value,
          playersList: AppServices.playersList,
        ),
        style: Styles.styleSemiBold24(context).copyWith(color: AppColors.coffeeColor),
        cursorColor: AppColors.coffeeColor,
        decoration: InputDecoration(
          errorStyle: Styles.extraLight16(context),
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: CustomPlayerAddButton(onPressed: () => validatePlayer(context)),
          ),
          hintText: 'addPlayer'.tr(),
          hintStyle: Styles.styleSemiBold24(
            context,
          ).copyWith(color: AppColors.whiteColor.withAlpha(150)),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          enabledBorder: FormFieldHelper.buildBorder(),
          focusedBorder: FormFieldHelper.buildBorder(),
          errorBorder: FormFieldHelper.buildErrorBorder(),
          focusedErrorBorder: FormFieldHelper.buildErrorBorder(),
        ),
      ),
    );
  }

  void validatePlayer(BuildContext context) {
    if (formKey.currentState!.validate()) {
      setState(() {
        context.playersCubit.addPlayer(PlayerModel(name: controller.text.trim()));
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
}
