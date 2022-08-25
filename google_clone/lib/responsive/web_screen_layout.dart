import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/utils/colors.dart';
import 'package:google_clone/widgets/web/language_footer.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';
import 'package:google_clone/widgets/web/translation_buttons.dart';

import '../widgets/search.dart';
import '../widgets/web/web_footer.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => WebScreenLayoutState();
}

class WebScreenLayoutState extends State<WebScreenLayout> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ).copyWith(
              right: 10.0,
            ),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(
                        textEditingController: textEditingController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SearchButtons(
                        textEditingController: textEditingController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TranslationButtons(),
                    ],
                  ),
                  Column(
                    children: const [
                      LanguageFooter(),
                      WebFooter(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
