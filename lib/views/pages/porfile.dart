import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final int index;

  const ProfilePage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('ini tampilan profile $index');
  }
}
