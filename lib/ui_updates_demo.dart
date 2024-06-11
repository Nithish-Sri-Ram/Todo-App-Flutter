import 'package:flutter/material.dart';
import 'package:todo/demo_button.dart';

class UIUpdateDemo extends StatelessWidget {
  const UIUpdateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build called');
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Every flutter developer has some basic understanding of flutter\'s internals',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Do you understand how flutter updates UI\'s?',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            DemoButton(),
          ],
        ),
      ),
    );
  }
}
