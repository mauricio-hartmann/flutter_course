import 'dart:math';

import 'package:basics/widgets/app_text.dart';
import 'package:basics/widgets/text_control.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basics'),
          centerTitle: true,
        ),
        body: _Home(),
      ),
    );
  }
}

class _Home extends StatefulWidget {
  @override
  State<_Home> createState() => __HomeState();
}

class __HomeState extends State<_Home> {
  final _random = Random();
  static const _texts = [
    'Random text 1',
    'Random text 2',
    'Random text 3',
    'Random text 4',
  ];

  var _textIndex = 0;

  void _changeText() {
    var randomIndex = _random.nextInt(4);
    setState(() => _textIndex = randomIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(_texts[_textIndex]),
          const SizedBox(height: 9.0),
          TextControl(_changeText),
        ],
      ),
    );
  }
}
