import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.menu, 'label': 'Main Menu', 'isMain': true},
    {'icon': Icons.settings, 'label': 'Settings'},
  ];
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          return Column(
            mainAxisSize: MainAxisSize.min,
        children: [
              IconButton(
                icon: Icon(
                  item['icon'],
                  size: item['isMain'] == true ? 30 : 24,
  ),
                onPressed: () {},
              ),
              // Text(item['label']),
            ],
);
        }).toList(),
      ),
    );
  }
}