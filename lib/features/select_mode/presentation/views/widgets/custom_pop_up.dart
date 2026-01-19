import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/custom_pop_up_form_field.dart';

class CustomPopUp extends StatefulWidget {
  const CustomPopUp({
    super.key,
    required this.title,
    required this.onStart,
    required this.minimumModeNum,
  });

  final String title;
  final void Function(int inputNum) onStart;
  final int minimumModeNum;

  @override
  State<CustomPopUp> createState() => _CustomPopUpState();
}

class _CustomPopUpState extends State<CustomPopUp> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.transparent,
        child: Form(
          key: formKey,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 46),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.coffeeColor, width: 3),
            ),
            constraints: const BoxConstraints(maxWidth: 500, maxHeight: 250),

            child: Column(
              children: [
                CustomText(
                  widget.title,
                  style: Styles.styleBold25(
                    context,
                  ).copyWith(color: AppColors.coffeeColor, fontSize: 25),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    height: 50,
                    child: CustomPopUpFormField(
                      controller: controller,
                      minimumModeNum: widget.minimumModeNum,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffc41b16),
                          padding: const EdgeInsets.symmetric(horizontal: 38),
                        ),
                        child: CustomText('back', style: Styles.styleBold14(context)),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pop(context);
                            widget.onStart(int.parse(controller.text));
                          }
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff239892),
                          padding: const EdgeInsets.symmetric(horizontal: 38),
                        ),
                        child: CustomText('start', style: Styles.styleBold14(context)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
