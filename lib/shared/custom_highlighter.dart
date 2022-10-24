import 'package:flutter/material.dart';

import 'theme.dart';

class Highlighter extends StatelessWidget {
  final CustomColor color;
  final double width;
  final double height;

  const Highlighter(
      {Key? key, required this.color, required this.width, this.height = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.1,
      child: Container(
        width: width,
        height: height,
        color: customColor[color],
      ),
    );
  }
}
