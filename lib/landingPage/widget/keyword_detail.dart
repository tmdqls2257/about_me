import 'package:about_me/shared/custom_scrollbar.dart';
import 'package:about_me/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../provider/bottom_navigation_provider.dart';
import '../keyword_provider.dart';

class KeywordDetail extends StatelessWidget {
  const KeywordDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);
    KeywordProvider keywordProvider =
        Provider.of<KeywordProvider>(context, listen: false);
    final currentKeyword = keywordProvider.currentKeyword();
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: Column(children: [
          Container(
            height: 210,
            padding: const EdgeInsets.fromLTRB(20, 42, 20, 0),
            color: customColor[CustomColor.green],
            child: Stack(children: [
              Positioned(
                right: 0,
                top: 0,
                // child: CloseButton(),
                child: CustomIconBtn(
                  svgAsset: SvgIconType.close,
                  onPressed: () {
                    bottomNavigationProvider.pop();
                  },
                ),
              ),
              Center(
                child: Avatar(
                  assetName: 'assets/images/splashImage.png',
                  radius: 64,
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: CustomScrollbar(listWidget: [
              Container(
                width: 46,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: customColor[CustomColor.blue]!),
                ),
                child: Center(
                  child: CustomText(
                    text: '키워드',
                    color: CustomColor.blue,
                    typoType: TypoType.labelLight,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: currentKeyword.title,
                    typoType: TypoType.labelBolder,
                  ),
                  CustomText(
                    text: '22년 9월 인증 (총 9회)',
                    typoType: TypoType.labelTiny,
                  ),
                ],
              ),
              CustomText(
                text: '20년 11월생 엄마 노량진동',
                typoType: TypoType.labelTiny,
              ),
              const SizedBox(
                height: 14,
              ),
              Divider(
                thickness: 1,
                color: customColor[CustomColor.black],
                height: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomText(
                textAlign: TextAlign.start,
                text: currentKeyword.content,
                typoType: TypoType.bodyLight,
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
