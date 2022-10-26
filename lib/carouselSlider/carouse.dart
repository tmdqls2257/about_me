import 'package:flutter/material.dart';

import '../shared/shared.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
    required this.items,
    required this.builderFunction,
    required this.height,
    this.dividerIndent = 10,
  }) : super(key: key);

  final List<dynamic> items;
  final double dividerIndent;

  final Function(BuildContext context, dynamic item) builderFunction;

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
          physics: const PageScrollPhysics(),
          separatorBuilder: (context, index) => Divider(
                indent: dividerIndent,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            Widget item = builderFunction(context, items[index]);
            return item;
          }),
    );
  }
}
