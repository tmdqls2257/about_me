import 'package:about_me/landingPage/keyword_model.dart';
import 'package:about_me/landingPage/keyword_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../carouselSlider/carouse.dart';
import '../../shared/shared.dart';
import '../keyword_data.dart';
import 'keyword_card.dart';

class KeywordList extends StatelessWidget {
  const KeywordList({
    Key? key,
    required this.content,
  }) : super(key: key);

  final BuildContext content;

  @override
  Widget build(BuildContext context) {
    KeywordProvider keywordProvider =
        Provider.of<KeywordProvider>(context, listen: false);
    // List<KeyWord> list = keywordList;
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
            items: keywordProvider.currentKeywords,
            builderFunction: (context, item, index) {
              return KeywordCard(
                  idx: index, title: item.title, content: item.content);
            },
          ),
        )
      ],
    );
  }
}
