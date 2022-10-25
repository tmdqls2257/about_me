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
            // if (index == 0) {
            //   return Padding(
            //     padding: EdgeInsets.only(left: dividerIndent),
            //     child: item,
            //   );
            // } else if (index == items.length - 1) {
            //   return Padding(
            //     padding: EdgeInsets.only(right: dividerIndent),
            //     child: item,
            //   );
            // }
            return item;
          }),
    );
  }
}

class KeywordCard extends StatelessWidget {
  const KeywordCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 178,
      child: Card(
        color: customColor[CustomColor.card],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 18, 10, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 0, 6, 6),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 45,
                      height: 18,
                      color: customColor[CustomColor.black],
                      child: Center(
                        child: CustomText(
                          text: '키워드1',
                          color: CustomColor.white,
                          typoType: TypoType.labelSmaller,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    CustomText(
                      text: '성실',
                      typoType: TypoType.h3,
                    ),
                  ]),
            ),
            Divider(
              thickness: 1,
              color: customColor[CustomColor.black],
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 12, 6, 0),
              child: CustomText(
                text: '키워드 키워드 키워드 키워드 키워드 sdsdsd',
                typoType: TypoType.labelLight,
                textAlign: TextAlign.start,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
