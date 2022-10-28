import 'package:flutter/material.dart';

class CustomScrollbar extends SizedBox {
  final List<Widget> listWidget;
  final EdgeInsetsGeometry padding;
  CustomScrollbar(
      {Key? key,
      super.height = 398,
      required this.listWidget,
      this.padding = EdgeInsets.zero})
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: listWidget)),
          ),
        );
}
