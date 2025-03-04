import 'package:flutter/material.dart';
import 'package:myapp/views/pages/home.dart';
import 'package:myapp/views/pages/porfile.dart';
import 'package:myapp/views/pages/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 1;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      ProfilePage(index: _currentIndex),
      HomePage(index: _currentIndex),
      SettingPage(index: _currentIndex),
    ];
  }

  void _onItemTapped(int index) {
    if (index >= 0 && index < _pages.length) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: IndexedStack(index: _currentIndex, children: _pages),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _onItemTapped(1);
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}