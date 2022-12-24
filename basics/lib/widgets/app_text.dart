import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  final String text;

  const AppText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 25.0),
    );
  }
}
