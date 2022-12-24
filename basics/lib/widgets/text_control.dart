import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onClick;

  const TextControl(this.onClick);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15.0),
      ),
      child: const Text(
        'Change text',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
