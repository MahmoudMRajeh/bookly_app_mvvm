import 'package:alarm_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Styles.txtStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2039)",
          style: Styles.txtStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
