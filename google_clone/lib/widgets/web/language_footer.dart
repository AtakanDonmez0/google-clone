import 'package:flutter/material.dart';
import 'package:google_clone/utils/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class LanguageFooter extends StatelessWidget {
  const LanguageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            FooterText(text: "English"),
          ],
        ),
      ),
    );
  }
}
