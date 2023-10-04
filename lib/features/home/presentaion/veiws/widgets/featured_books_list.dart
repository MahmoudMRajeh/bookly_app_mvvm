
import 'package:alarm_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

import 'custom_featured_item_list.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: context.height * .29,
      child: ListView.builder(
        itemCount: 10,
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