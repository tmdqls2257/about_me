import 'package:about_me/landingPage/keyword_provider.dart';
import 'package:about_me/landingPage/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/bottom_navigation_provider.dart';
import '../../shared/shared.dart';

class KeywordCard extends StatelessWidget {
  final int idx;
  final String title;
  final String content;

  const KeywordCard({
    super.key,
    required this.idx,
    required this.title,
    required this.content,
  });

  String _contentSplit(String content) {
    if (content.length > 20) {
      String subWord = '${content.substring(0, 21)}...';
      return subWord;
    } else {
      return content;
    }
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);
    KeywordProvider keywordProvider = Provider.of<KeywordProvider>(context);
    return CustomCard(
      widget: Padding(
        padding: const EdgeInsets.fromLTRB(10, 18, 10, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 6),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 45,
                height: 18,
                color: customColor[CustomColor.black],
                child: Center(
                  child: CustomText(
                    text: '키워드${idx + 1}',
                    color: CustomColor.white,
                    typoType: TypoType.labelSmaller,
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              CustomText(
                text: title,
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
            padding: const EdgeInsets.fromLTRB(6, 12, 6, 11.5),
            child: CustomText(
              text: _contentSplit(content),
              typoType: TypoType.labelLight,
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleButton(
                onTap: (context) {
                  // keywordProvider.currentKeywords;
                  keywordProvider.updateKeyword(idx);
                  bottomNavigationProvider.push(4);
                },
                icon: Icons.keyboard_arrow_down,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
