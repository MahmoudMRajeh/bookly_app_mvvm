import 'package:alarm_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_appbar.dart';
import 'custom_featured_item_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: context.height * .29,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0),
            child:  CustomFeaturedItem(),
          );
        },
      ),
    );
  }
}
