import 'package:flutter/material.dart';

import 'theme.dart';

class CircleButton extends StatelessWidget {
  final void Function(BuildContext) onTap;
  const CircleButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: customColor[CustomColor.black], // button color
        child: InkWell(
          splashColor: customColor[CustomColor.crimson],
          onTap: () {
            onTap(context);
          }, // inkwell color
          child: const SizedBox(
            width: 30,
            height: 30,
            child: Icon(Icons.arrow_forward_ios_rounded,
                size: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends ClipRRect {
  final CustomColor bgColor;
  final CustomColor textColor;
  final String label;
  final CustomW width;
  final double height;
  final double fontSize;
  final Function() onPressed;

  CustomButton({
    Key? key,
    this.width = CustomW.w4,
    this.bgColor = CustomColor.lightblack,
    this.textColor = CustomColor.white,
    this.fontSize = 12,
    this.height = 36.0,
    required this.label,
    required this.onPressed,
  }) : super(
          key: key,
          child: Material(
            child: InkWell(
              onTap: onPressed,
              child: Ink(
                height: height,
                width: customW[width],
                decoration: BoxDecoration(
                  color: customColor[bgColor],
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: customColor[textColor],
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}
