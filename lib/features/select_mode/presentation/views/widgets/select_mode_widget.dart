import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/select_mode/data/models/select_mode_model.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_decorated_container.dart';

class SelectModeWidget extends StatelessWidget {
  const SelectModeWidget({super.key, required this.selectModeModel});

  final SelectModeModel selectModeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            selectModeModel.backGroundColor,
            Colors.deepPurple,
            Colors.deepPurple[300]!,
            const Color.fromARGB(255, 243, 205, 225),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SelectModeDecoratedContainer(
                selectModeModel: selectModeModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              CustomTextButton(
                onPressed: () {
                  // context.pushReplacement(AppRouter.kSelectModeView);
                },
                text: 'اختيار',
              ),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
