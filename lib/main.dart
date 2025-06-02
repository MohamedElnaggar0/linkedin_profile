import 'package:flutter/material.dart';
import 'package:linkedin_profile/features/profile/presentation/views/profile_view.dart';

void main() {
  runApp(const LinkedinProfile());
}

class LinkedinProfile extends StatelessWidget {
  const LinkedinProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const ProfileView(),
    );
  }
}
