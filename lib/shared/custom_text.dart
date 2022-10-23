import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomText extends SizedBox {
  final String text;

  final TextAlign textAlign;

  CustomText({
    super.key,
    this.text = '',
    this.textAlign = TextAlign.center,
  }) : super(
          child: Text(
            text,
            textAlign: textAlign,
            style: TextStyle(color: customColor['black']),
          ),
        );
}
