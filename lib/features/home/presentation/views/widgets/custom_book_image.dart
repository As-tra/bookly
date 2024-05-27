import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_play_button.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final int index;
  final bool showButton;
  const CustomBookImage({
    super.key,
    required this.index,
    this.showButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(AssetsData.converImages[index % 3]),
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
