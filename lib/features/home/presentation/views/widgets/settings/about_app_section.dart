import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/about_app_header.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/custom_settings_container.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/developing_team_card.dart';

class AboutAppSection extends StatelessWidget {
  const AboutAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSettingsContainer(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 16),
      child: Column(
        children: [
          const AboutAppHeader(),
          Image.asset(
            Assets.imagesDevelopingTeamIcon,
            width: 50,
          ),
          const SizedBox(
            height: 6,
          ),
          CustomText(
            'developingTeam',
            style: Styles.styleBold14(
              context,
            ).copyWith(fontSize: 12),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Container(
                margin: const EdgeInsets.only(top: 10, bottom: 16),
                height: 2,
                width: 32,
                color: AppColors.coffeeColor,
              );
            },
          ),
          Row(
            textDirection: TextDirection.ltr,
            children: [
              const Expanded(
                child: DevelopingTeamCard(
                  name: 'Eng / Mohamed Azzam',
                  imageAsset: Assets.imagesAppDeveloperIcon,
                  title: 'Mobile app developer ',
                  imageWidth: 120,
                  linkedinLink: 'https://www.linkedin.com/in/mohamed-azzam-1a7276330/',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SvgPicture.asset(
                  Assets.imagesAndSvg,
                  width: 20,
                ),
              ),
              const Expanded(
                child: DevelopingTeamCard(
                  name: 'Eng / Nour Elsayed',
                  imageAsset: Assets.imagesAppDesignerIcon,
                  title: 'Ui / Ux designer',
                  imageWidth: 120,
                  linkedinLink: 'https://www.linkedin.com/in/nour-elsayed-57b108326/',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
