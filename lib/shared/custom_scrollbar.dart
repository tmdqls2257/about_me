import 'package:flutter/material.dart';

class CustomScrollbar extends SizedBox {
  final List<Widget> listWidget;
  final EdgeInsetsGeometry padding;
  final CrossAxisAlignment crossAxis;
  CustomScrollbar(
      {Key? key,
      super.height = 398,
      required this.listWidget,
      this.padding = EdgeInsets.zero,
      this.crossAxis = CrossAxisAlignment.start})
      : super(
          key: key,
          width: double.infinity,
          child: Scrollbar(
            thumbVisibility: true,
            thickness: 3,
            radius: const Radius.circular(2),
            child: SingleChildScrollView(
                padding: padding,
                child: Column(
                    crossAxisAlignment: crossAxis, children: listWidget)),
          ),
        );
}
