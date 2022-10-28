import 'package:flutter/material.dart';

import 'shared.dart';

class CustomAppBar extends AppBar {
  final Widget widget;
  final bool isBackBtn;
  final bool isHome;
  final void Function() onPressedBack;
  final void Function() onPressedHome;

  CustomAppBar({
    super.key,
    this.widget = const SizedBox(),
    required this.onPressedBack,
    required this.onPressedHome,
    this.isBackBtn = true,
    this.isHome = false,
  }) : super(
          centerTitle: true,
          leadingWidth: 76,
          leading: Row(children: [
            const SizedBox(
              width: 14,
            ),
            if (isBackBtn)
              CustomIconBtn(
                onPressed: onPressedBack,
                svgAsset: SvgIconType.arrowBack,
              ),
            const SizedBox(
              width: 14,
            ),
            if (isHome)
              CustomIconBtn(
                onPressed: onPressedHome,
                svgAsset: SvgIconType.home,
              ),
          ]),
          title: widget,
          backgroundColor: customColor[CustomColor.white],
          elevation: 0,
        );
}
