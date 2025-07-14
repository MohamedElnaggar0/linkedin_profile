import 'package:flutter/material.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';

class DescAboutMeText extends StatelessWidget {
  const DescAboutMeText({super.key, required this.profile});
  final List<ProfileModel> profile;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff1B1F23)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              profile[0].data!.about!,
              style: TextStyle(fontSize: 15.5),
            ),
          ],
        ),
      ),
    );
  }
}
