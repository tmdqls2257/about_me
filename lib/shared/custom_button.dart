import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';
import 'theme.dart';

class CircleButton extends StatelessWidget {
  final Function(BuildContext) onTap;
  final IconData icon;
  const CircleButton({
    Key? key,
    required this.onTap,
    this.icon = Icons.arrow_forward_ios_rounded,
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
          child: SizedBox(
            width: 30,
            height: 30,
            child: Icon(icon, size: 20, color: Colors.white),
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
  final TypoType typoType;
  final BorderRadiusGeometry borderRadius;
  final Function() onPressed;

  CustomButton({
    Key? key,
    this.width = CustomW.w4,
    this.bgColor = CustomColor.lightblack,
    this.textColor = CustomColor.white,
    this.typoType = TypoType.body,
    this.height = 36.0,
    this.borderRadius = BorderRadius.zero,
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
                  borderRadius: borderRadius,
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: customColor[textColor],
                      fontWeight: typoStyle[typoType]!.fontWeight,
                      fontSize: typoStyle[typoType]!.fontSize,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}

class CustomClose extends ClipRRect {
  final Function() onPressed;

  CustomClose({
    super.key,
    required this.onPressed,
  }) : super(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              child:
                  SizedBox(child: SvgPicture.asset('assets/icons/close.svg')),
            ),
          ),
        );
}
