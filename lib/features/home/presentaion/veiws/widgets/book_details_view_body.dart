import 'package:alarm_app/features/home/presentaion/veiws/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SafeArea(child: BookDetailsAppBar()),
          Text("Hi"),
        ],
      ),
    );
  }
}
