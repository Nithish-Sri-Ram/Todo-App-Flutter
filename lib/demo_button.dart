import 'package:flutter/material.dart';

class DemoButton extends StatefulWidget {
  const DemoButton({super.key});
  @override
  State<DemoButton> createState() {
    return _DemoButtonState();
  }
}

class _DemoButtonState extends State<DemoButton> {
  var isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print('Demo is called');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isUnderstood = true;
                });
              },
              child: const Text('YES'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isUnderstood = false;
                });
              },
              child: const Text('NO'),
            ),
          ],
        ),
        // const SizedBox(height: 10),
        if (isUnderstood) const Text('Awsome'),
      ],
    );
  }
}
