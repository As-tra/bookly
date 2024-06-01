import 'package:bookly/features/home/presentation/views/widgets/custom_play_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  final bool showButton;
  const CustomBookImage({
    super.key,
    this.showButton = false,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: AspectRatio(
            aspectRatio: 0.7,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: showButton ? const CustomPlayButton() : Container(),
        )
      ],
    );
  }
}
