import 'package:flutter/material.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key, required this.profile});
  final List<ProfileModel> profile;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff1B1F23)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Education',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  profile[0].data!.educations![0].schoolLogoUrl!,
                  height: 70,
                  width: 70,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile[0].data!.educations![0].school!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      profile[0].data!.educations![0].degree!,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      profile[0].data!.educations![0].dateRange!,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      profile[0].data!.educations![0].activities!,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
