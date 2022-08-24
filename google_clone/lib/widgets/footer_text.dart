import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String text;
  const FooterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xff70757a),
        ),
      ),
    );
  }
}
