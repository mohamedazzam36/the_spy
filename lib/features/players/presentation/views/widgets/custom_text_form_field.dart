import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
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
  List<PlayerModel> playersList = [];
  String? name;
  AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlayersCubit, PlayersState>(
      listener: (context, state) {
        playersList = BlocProvider.of<PlayersCubit>(context).playersList;
      },
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: TextFormField(
          controller: controller,
          onChanged: (value) {
            name = value;
          },
          onFieldSubmitted: (value) {
            name = value;
            if (formKey.currentState!.validate()) {
              BlocProvider.of<PlayersCubit>(
                context,
              ).addPlayer(PlayerModel(name: name!));
              BlocProvider.of<PlayersCubit>(context).fetchPlayersData();
              setState(() {
                autovalidateMode = AutovalidateMode.disabled;
              });
              controller.clear();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).noNameValidate;
            } else if (playersList.any(
              (player) {
                return value == player.name;
              },
            )) {
              return S.of(context).nameRegisteredValidate;
            }
            return null;
          },
          style: Styles.styleSemiBold24(context),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            errorStyle: Styles.extraLight16(context),
            suffixIcon: IconButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<PlayersCubit>(
                    context,
                  ).addPlayer(PlayerModel(name: name!));
                  BlocProvider.of<PlayersCubit>(context).fetchPlayersData();
                  setState(() {
                    autovalidateMode = AutovalidateMode.disabled;
                  });
                  controller.clear();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
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
        ),
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
