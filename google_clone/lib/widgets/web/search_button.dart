import 'package:flutter/material.dart';
import 'package:google_clone/screens/search_screen.dart';
import 'package:google_clone/utils/colors.dart';

class SearchButton extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  final String searchQuery;
  const SearchButton({
    Key? key,
    required this.text,
    required this.textEditingController,
    this.searchQuery = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      child: Text(text),
      onPressed: () {
        if (text == "Google Search" && textEditingController.text != "") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SearchScreen(
                start: "0",
                searchQuery: textEditingController.text,
              ),
            ),
          );
        }
      },
    );
  }
}
