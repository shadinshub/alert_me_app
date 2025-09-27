import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(252, 237, 240, 1),
      body: Center(
        child: Text('صفحة الرسائل والتنبيهات', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
