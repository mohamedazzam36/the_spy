import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/custom_settings_container.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/custom_sound_slider.dart';

class ChangeVolumeSection extends StatelessWidget {
  const ChangeVolumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return CustomSettingsContainer(
          child: Row(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Assets.imagesVolumeSettingsIcon,
                width: 46,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'soundEffects',
                      style: Styles.styleBold14(
                        context,
                      ).copyWith(color: AppColors.coffeeColor),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CustomText(
                      'soundEffectsDiscription',
                      style: Styles.styleBold14(
                        context,
                      ).copyWith(color: AppColors.coffeeColor, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomText(
                      'soundLevel',
                      style:
                          Styles.styleBold14(
                            context,
                          ).copyWith(
                            color: context.homeCubit.currentSoundColors.sliderColor,
                            shadows: [
                              Shadow(
                                blurRadius: 20.0,
                                color: context.homeCubit.currentSoundColors.sliderColor.withAlpha(
                                  120,
                                ),
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                    ),
                    const CustomSoundSlider(
                      sliderValue: 0.3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
