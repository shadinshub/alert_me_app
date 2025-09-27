import 'package:flutter/material.dart';
import 'package:alert_me_app/screens/profile.dart';
import 'package:alert_me_app/screens/alerts.dart';
import 'package:alert_me_app/screens/myreports.dart';

// صفحة رئيسية عادية (محتوى التبويب الأول)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('هذه الصفحة الرئيسية', style: TextStyle(fontSize: 24)),
    );
  }}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),   // الصفحة الرئيسية
    const Alerts(),     // الرسائل والتنبيهات
    const Myreports(),  // تقاريري
    const Profile(),    // الملف الشخصي
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 237, 240, 1),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(252, 237, 240, 1),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Alerts'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_drive_file),label: 'MyReports'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}

// صفحة الرئيسية البسيطة
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('هذه الصفحة الرئيسية', style: TextStyle(fontSize: 24)),
    );
  }
}
