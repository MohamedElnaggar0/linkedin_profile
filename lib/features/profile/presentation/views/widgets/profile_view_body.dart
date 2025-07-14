import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkedin_profile/features/profile/presentation/blocs/cubit/profile_data_cubit.dart';
import 'package:linkedin_profile/features/profile/presentation/views/widgets/about_me_texts.dart';
import 'package:linkedin_profile/features/profile/presentation/views/widgets/desc_about_me.dart';
import 'package:linkedin_profile/features/profile/presentation/views/widgets/education_section.dart';
import 'package:linkedin_profile/features/profile/presentation/views/widgets/profile_and_cover.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileDataCubit, ProfileDataState>(
        builder: (context, state) {
      if (state is ProfileDataLoading || state is ProfileDataInitial) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is ProfileDataSuccess) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xff1B1F23)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileAndCover(
                    profileList: state.profileList,
                  ),
                  const SizedBox(height: 20),
                  AboutMeTexts(
                    profile: state.profileList,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DescAboutMeText(
              profile: state.profileList,
            ),
            SizedBox(
              height: 10,
            ),
            EducationSection(
              profile: state.profileList,
            ),
          ],
        );
      } else if (state is ProfileDataFailure) {
        return Center(child: Text(state.message));
      } else {
        return Center(
          child: Text(
            'Something went wrong',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      }
    });
  }
}
