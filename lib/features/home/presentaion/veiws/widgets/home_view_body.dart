import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_appbar.dart';
import 'custom_featured_item_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         CustomAppBar(),
         SizedBox(
          height: 60,
        ),
        CustomFeaturedItem(),
      ],
    );
  }
}

