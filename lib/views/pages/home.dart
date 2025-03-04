import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int index;
  const HomePage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('ini tampilan Home $index');
  }
}