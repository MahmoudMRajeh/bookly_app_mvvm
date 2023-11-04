import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return const Icon(Icons.error_outline_outlined);
          },
        ),
        // Container(
        //   decoration:  BoxDecoration(
        //     borderRadius:const BorderRadius.all(
        //       Radius.circular(12),
        //     ),
        //     image: DecorationImage(
        //       image: NetworkImage(
        //         imageUrl,
        //       ),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
