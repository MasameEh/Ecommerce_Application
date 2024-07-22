import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.label,
    required this.onTap,
    this.width = double.infinity,
    this.margin,
  });
  final EdgeInsetsGeometry? margin;
  final String label;
  final double width;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        alignment: Alignment.center,
        height: 45,
        width: width,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}