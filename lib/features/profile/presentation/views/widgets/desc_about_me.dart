import 'package:flutter/material.dart';

class DescAboutMeText extends StatelessWidget {
  const DescAboutMeText({super.key});

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
              'I am a skilled Flutter developer and software engineer with a passion for innovation and problem solving, I create dynamic and user-friendly mobile applications that enhance user experiences and bring ideas to reality.',
              style: TextStyle(fontSize: 15.5),
            ),
          ],
        ),
      ),
    );
  }
}
