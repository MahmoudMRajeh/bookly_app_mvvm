import 'package:alarm_app/features/home/presentaion/veiws/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 13,
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
