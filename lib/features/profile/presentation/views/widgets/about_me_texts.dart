import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';

class AboutMeTexts extends StatelessWidget {
  const AboutMeTexts({super.key, required this.profile});
  final List<ProfileModel> profile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            profile[0].data!.fullName!,
            style: GoogleFonts.sourceSans3(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 2),
          Text(
            profile[0].data!.headline!,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            profile[0].data!.school!,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            profile[0].data!.location!,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
