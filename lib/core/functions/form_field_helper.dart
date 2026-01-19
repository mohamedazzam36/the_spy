import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class FormFieldHelper {
  static String? validatePlayerName({
    required String? name,
    required List<PlayerModel> playersList,
  }) {
    if (name == null || name.isEmpty) {
      return 'noNameValidate'.tr();
    } else if (playersList.any(
      (player) {
        return name.trim() == player.name;
      },
    )) {
      return 'nameRegisteredValidate'.tr();
    }
    return null;
  }

  static OutlineInputBorder buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    );
  }

  static OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.coffeeColor, width: 2),
    );
  }
}
