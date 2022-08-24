import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  final TextEditingController textEditingController;
  const SearchButtons({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(
              text: "Google Search",
              textEditingController: textEditingController,
            ),
            const SizedBox(
              width: 10,
            ),
            SearchButton(
              textEditingController: textEditingController,
              text: "Feeling Lucky",
            ),
          ],
        ),
      ],
    );
  }
}
