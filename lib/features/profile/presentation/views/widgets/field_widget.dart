import 'package:flutter/material.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({super.key, required this.profile});
  final List<ProfileModel> profile;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      profile[0].data!.educations![0].fieldOfStudy!,
      style: TextStyle(color: Colors.white, fontSize: 29),
    ));
  }
}
