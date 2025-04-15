import 'package:flutter/material.dart';
import 'report_page.dart';
import 'search_page.dart';
import 'notifications_page.dart';

void main() {
  runApp(const MafqudaApp());
}

class MafqudaApp extends StatelessWidget {
  const MafqudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مفقودة',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: const MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    ReportPage(),
    SearchPage(),
    NotificationsPage(),
  ];

  final List<String> _titles = [
    'تقديم بلاغ',
    'البحث',
    'التنبيهات',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'بلاغ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'تنبيهات',
          ),
        ],
      ),
    );
  }
}
