import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class LearnMoreAboutMeItem extends StatelessWidget {
  final List<Widget> listWidget;

  final SvgIconType svgIconType;

  const LearnMoreAboutMeItem({
    Key? key,
    required this.listWidget,
    required this.svgIconType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        svgIcon[svgIconType] as Widget,
        const SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: listWidget,
        ),
      ],
    );
  }
}
