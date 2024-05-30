import 'dart:ui';
import 'package:flutter/material.dart';

class CustomPlayButton extends StatelessWidget {
  const CustomPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 6,
            sigmaY: 6,
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
