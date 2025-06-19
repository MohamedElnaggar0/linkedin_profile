import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

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
                Image.asset(
                  'assets/images/damietta_university_logo.jpg',
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
                      'Damietta University',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'بكالوريوس التربيه ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '2019 - 2023',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      'Grade: Good',
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
