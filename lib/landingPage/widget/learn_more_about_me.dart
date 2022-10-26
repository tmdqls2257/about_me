import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/shared.dart';

class LearnMoreAboutMe extends StatelessWidget {
  final String assetPath;
  final Column column;
  final bool isButton;
  final void Function(BuildContext) onTap;

  const LearnMoreAboutMe({
    Key? key,
    this.assetPath = '',
    required this.column,
    required this.onTap,
    this.isButton = true,
  }) : super(key: key);

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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center, //Center Row cont,
            children: [
              if (assetPath != '') SvgPicture.asset(assetPath),
              if (assetPath != '')
                const SizedBox(
                  width: 16,
                ),
              column,
            ],
          ),
          if (isButton) CircleButton(onTap: onTap)
        ],
      ),
    );
  }
}
