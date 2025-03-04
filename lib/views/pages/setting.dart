import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  final int index;
  const SettingPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('ini tampilan setting $index');
  }
}
