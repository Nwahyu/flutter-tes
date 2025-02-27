import 'package:flutter/material.dart';
// import 'package:myapp/views/pages/profile.dart';
// import 'package:myapp/views/pages/setting.dart';
// import 'package:myapp/views/widget/bottombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 1;
  late List<Widget> _pages;
  // late List<Widget> _pages = [
  //   ProfilePage(currentIndex: _currentIndex),
  //   SettingPage(currentIndex: _currentIndex),
  // ];

  @override
  void initState() {
    super.initState();
    _pages = [
      ProfilePage(currentIndex: _currentIndex),
      SettingPage(currentIndex: _currentIndex),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // ignore: avoid_print
      print(_currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: IndexedStack(index: _currentIndex, children: _pages),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Main'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final int currentIndex;

  const ProfilePage({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Page, Current Index: $currentIndex'));
  }
}

class SettingPage extends StatelessWidget {
  final int currentIndex;

  const SettingPage({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Setting Page, Current Index: $currentIndex'));
  }
}
