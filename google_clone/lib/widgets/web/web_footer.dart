import 'package:flutter/material.dart';
import 'package:google_clone/utils/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FooterText(
                  text: "About",
                ),
                SizedBox(
                  width: 10,
                ),
                FooterText(
                  text: "Advertising",
                ),
                SizedBox(
                  width: 10,
                ),
                FooterText(
                  text: "Business",
                ),
                SizedBox(
                  width: 10,
                ),
                FooterText(
                  text: "How Search Works",
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FooterText(
                  text: "Privacy",
                ),
                SizedBox(
                  width: 10,
                ),
                FooterText(
                  text: "Terms",
                ),
                SizedBox(
                  width: 10,
                ),
                FooterText(
                  text: "Settings",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
