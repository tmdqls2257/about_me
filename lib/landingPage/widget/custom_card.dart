import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class CustomCard extends StatelessWidget {
  final Widget widget;

  const CustomCard({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 178,
      child: Card(
        margin: EdgeInsets.zero,
        color: customColor[CustomColor.card],
        child: widget,
      ),
    );
  }
}
