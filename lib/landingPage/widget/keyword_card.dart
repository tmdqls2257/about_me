import 'package:about_me/landingPage/widget/custom_card.dart';
import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class KeywordCard extends StatelessWidget {
  const KeywordCard({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
