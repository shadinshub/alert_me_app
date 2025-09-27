import 'package:flutter/material.dart';



class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(252, 237, 240, 1),
      body: Center(
        child: Text('صفحة الملف الشخصي', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}