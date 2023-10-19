import 'package:alarm_app/core/utils/app_styles.dart';
import 'package:alarm_app/core/utils/media_query_values.dart';
import 'package:alarm_app/core/utils/widgets/custom_button.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/book_details_app_bar.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/books_action.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/custom_book_image.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/featured_books_list.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/rating_widget.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/similler_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SafeArea(
              child: BookDetailsAppBar(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * .2),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 43,
            ),
            Text(
              "The Jungle Book",
              style: Styles.txtStyle30.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                "Rudyard Kipling",
                style: Styles.txtStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const RatingWidget(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            const BooksAction(),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can alse like",
                style: Styles.txtStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimillerBooksListView(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
