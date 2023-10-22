import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .6,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
