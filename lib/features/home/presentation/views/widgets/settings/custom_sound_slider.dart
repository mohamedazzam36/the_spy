import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';

class CustomSoundSlider extends StatefulWidget {
  const CustomSoundSlider({super.key, required this.sliderValue});

  final double sliderValue;

  @override
  State<CustomSoundSlider> createState() => _CustomSoundSliderState();
}

class _CustomSoundSliderState extends State<CustomSoundSlider> {
  late double sliderValue;
  @override
  void initState() {
    sliderValue = widget.sliderValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: 200,
            child: SliderTheme(
              data:
                  SliderTheme.of(
                    context,
                  ).copyWith(
                    activeTrackColor: context.homeCubit.currentSoundColors.sliderColor,
                    thumbColor: context.homeCubit.currentSoundColors.thumbColor,
                    overlayColor: context.homeCubit.currentSoundColors.thumbColor.withAlpha(
                      30,
                    ),
                    trackHeight: 2,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                    overlayShape: const RoundSliderOverlayShape(overlayRadius: 10),
                  ),
              child: Slider(
                padding: const EdgeInsets.symmetric(vertical: 8),
                value: sliderValue,
                label: sliderValue.toString(),
                onChanged: (value) => setState(() => sliderValue = value),
              ),
            ),
          ),
        );
      },
    );
  }
}
