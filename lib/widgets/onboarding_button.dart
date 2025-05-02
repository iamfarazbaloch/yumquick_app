import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const OnboardingButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.only(left: 80, right: 80, bottom: 14, top: 14),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
