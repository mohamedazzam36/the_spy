import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class DevelopingTeamCard extends StatelessWidget {
  const DevelopingTeamCard({
    super.key,
    required this.name,
    required this.imageAsset,
    required this.title,
    required this.imageWidth,
    required this.linkedinLink,
  });

  final String name, imageAsset, title, linkedinLink;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Align(
          child: Container(
            height: 132,
            constraints: const BoxConstraints(maxWidth: 300, minWidth: 200),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: context.homeCubit.currentGradient,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 1.5, color: Colors.grey),
            ),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Column(
                spacing: 8,
                children: [
                  Image.asset(
                    imageAsset,
                    width: imageWidth,
                    height: 100,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      name,
                      style: Styles.styleBold14(context).copyWith(fontSize: 22),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      style: Styles.styleBold10(context).copyWith(
                        fontSize: 18,
                        color: Colors.white,
                        shadows: [
                          const BoxShadow(
                            blurRadius: 3,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    spacing: 2,
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_circle_right,
                        size: 10,
                        color: AppColors.coffeeColor,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: GestureDetector(
                          onTap: () async {
                            final Uri url = Uri.parse(linkedinLink);

                            await launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            'Press here to contact',
                            style: Styles.styleBold10(context).copyWith(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Colors.white,
                              color: Colors.white,
                              shadows: [
                                const BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
