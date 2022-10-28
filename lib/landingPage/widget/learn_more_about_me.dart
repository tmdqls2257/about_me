import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class LearnMoreAboutMe extends StatelessWidget {
  final List<Widget> listWidget;

  const LearnMoreAboutMe({Key? key, required this.listWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      height: 68,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: customColor[CustomColor.stroke]!,
        ),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center, //Center Row cont,
          children: listWidget),
    );
  }
}
