import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final FontWeight? fontWeight;
  final void Function()? onpressed;
  final String text;
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.fontWeight, this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
