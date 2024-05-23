import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'E N J O Y     F R E E     B O O K S',
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}