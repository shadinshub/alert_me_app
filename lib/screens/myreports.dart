import 'package:flutter/material.dart';

class Myreports extends StatelessWidget {
  const Myreports({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(252, 237, 240, 1),
      body: Center(
        child: Text('صفحة تقاريري', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
