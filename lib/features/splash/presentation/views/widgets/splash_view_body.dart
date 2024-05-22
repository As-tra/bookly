import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 180,
          child: Image.asset(AssetsData.logo),
        ),
        const Text(
          'E N J O Y     F R E E     B O O K S',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
