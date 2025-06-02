import 'package:flutter/material.dart';
import 'package:linkedin_profile/features/profile/presentation/widgets/about_me_texts.dart';
import 'package:linkedin_profile/features/profile/presentation/widgets/profile_and_cover.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xff1B1F23)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileAndCover(),
              const SizedBox(height: 20),
              const AboutMeTexts(),
            ],
          ),
        ),
      ],
    );
  }
}
