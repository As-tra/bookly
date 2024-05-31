import 'package:bookly/features/home/presentation/views/widgets/custom_play_button.dart';
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
    return AspectRatio(
      aspectRatio: 0.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
        child: showButton
            ? const Align(
                alignment: Alignment.bottomRight,
                child: CustomPlayButton(),
              )
            : null,
      ),
    );
  }
}
