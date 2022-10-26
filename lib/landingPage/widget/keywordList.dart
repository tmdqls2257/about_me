import 'package:flutter/material.dart';

import '../../carouselSlider/carouse.dart';
import '../../shared/shared.dart';

class KeywordList extends StatelessWidget {
  const KeywordList({
    Key? key,
    required this.content,
  }) : super(key: key);

  final BuildContext content;

  @override
  Widget build(BuildContext context) {
    List list = [const KeywordCard(), const KeywordCard(), const KeywordCard()];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'My Keywords',
          typoType: TypoType.h2,
        ),
        CustomText(
          text: '나를 소개하는 키워드',
          typoType: TypoType.bodyLight,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Carousel(
            height: 178,
            items: list,
            builderFunction: (context, item) {
              return const KeywordCard();
            },
          ),
        )
      ],
    );
  }
}
