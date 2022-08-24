import 'package:flutter/material.dart';

import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: const [
        FooterText(
          text: "About",
        ),
        FooterText(
          text: "Advertising",
        ),
        FooterText(
          text: "Business",
        ),
        FooterText(
          text: "How Search Works",
        ),
        FooterText(
          text: "Privacy",
        ),
        FooterText(
          text: "Terms",
        ),
        FooterText(
          text: "Settings",
        ),
      ],
    );
  }
}
