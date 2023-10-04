import 'package:alarm_app/core/utils/app_styles.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/best_seller__book_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_appbar.dart';
import 'featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 45,
          ),
          Text(
            "Best Seller",
            style: Styles.txtStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerBookItem(),
        ],
      ),
    );
  }
}

