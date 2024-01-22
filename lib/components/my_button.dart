import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double? sizeBoxHeight;

  const MyButton(
      {required this.onPressed,
        required this.text,
        this.sizeBoxHeight,
        super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 296,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: const Color(0xFFFFD200),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0.03,
              letterSpacing: -0.41,
            ),
          )),
    );
  }
}
