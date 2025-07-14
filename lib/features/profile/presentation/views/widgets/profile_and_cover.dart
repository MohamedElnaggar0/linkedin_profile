import 'package:flutter/material.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';

class ProfileAndCover extends StatelessWidget {
  const ProfileAndCover({super.key, required this.profileList});
  final List<ProfileModel> profileList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Linkedin_cover_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 20,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xff1B1F23), width: 5),
                image: DecorationImage(
                  image: NetworkImage(profileList[0].data!.profileImageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
