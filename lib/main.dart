import 'package:flutter/material.dart';
import 'package:todo/key/keys.dart';
// import 'package:todo/ui_updates_demo.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const Keys(),
      ),
    ),
  );
}
