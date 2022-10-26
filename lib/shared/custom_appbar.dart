import 'package:flutter/material.dart';

import 'shared.dart';

class CustomAppBar extends AppBar {
  final Widget widget;
  final bool isBackBtn;
  final void Function()? onPressed;

  CustomAppBar(
      {super.key,
      this.widget = const SizedBox(),
      this.onPressed,
      this.isBackBtn = true})
      : super(
          centerTitle: true,
          leading: Row(children: [
            if (isBackBtn)
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: customColor[CustomColor.black],
                ),
                onPressed: onPressed,
              )
          ]),
          title: widget,
          backgroundColor: customColor[CustomColor.white],
          elevation: 0,
        );
}
