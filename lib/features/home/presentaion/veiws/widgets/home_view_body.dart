import 'package:alarm_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_appbar.dart';
import 'featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 45,
          ),
          Text("Best Seller",style: Styles.titleMedium,),
        ],
      ),
    );
  }
}

