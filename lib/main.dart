import 'package:flutter/material.dart';

void main() {
  runApp(const LinkedinProfile());
}

class LinkedinProfile extends StatelessWidget {
  const LinkedinProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
    );
  }
}
