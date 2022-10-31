import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;
  // var widgetKey = GlobalKey();
  void _showButtomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 462,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                  child: CustomIconBtn(
                    onPressed: () => Navigator.pop(context),
                    svgAsset: SvgIconType.close,
                  ),
                )
              ],
            ),
            CustomScrollbar(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              listWidget: [
                CustomText(
                  textAlign: TextAlign.start,
                  text: '꾸준한 주니어',
                  typoType: TypoType.h2,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '저는 저 자신을 프론트엔드 백엔드 개발자가 아닌 소프트웨어 개발자라고 설명 드리고 싶습니다.',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '만들고 싶은 서비스가 있다면 프론트엔드, 백엔드, 모바일 개발이든 서비스를 만들고 있습니다.',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '단순히 프로젝트를 만들고 끝을 내고 싶지 않아',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '웹은 개인 블로그를 개발하고 유지보수 해나가고 있고',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '모바일은 플러터로 어플을 출시하고자 기획을 하고 있습니다.',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '모바일은 플러터로 어플을 출시하고자 기획을 하고 있습니다.',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '개발 철학',
                  typoType: TypoType.h2,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '테크 오타쿠가 세상을 구한다. 이게 저의 개발 철학입니다.',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '삶 주변에 있는 문제들을 탐구하며 문제를 기술적으로 어떻게 해결할 수 있을지 고민을 하고',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '어떠한 프로덕트를 만들 수 있을지 생각하고 있습니다.',
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '기술에 대한 도전',
                  typoType: TypoType.h2,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomText(
                  textAlign: TextAlign.start,
                  text: '새로운 기술에 관심이 많고, 끊임없는 공부를 통해 지속 성장하는 개발자이며',
                ),
              ],
            ),
          ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customColor[CustomColor.yellow],
      width: MediaQuery.of(context).size.width,
      height: 272,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
        child: Column(children: [
          CustomText(
            text: '저를 소개합니다 :)',
            typoType: TypoType.h1,
          ),
          CustomText(
            text: '육아크루의 개발팀! 나를 발견하다니 행운이다.',
            typoType: TypoType.bodyLight,
          ),
          const Spacer(),
          Avatar(
            assetName: 'assets/images/app_image.png',
          ),
          const Spacer(),
          CustomText(
            text: '홍승빈',
            typoType: TypoType.h3,
          ),
          CustomText(
            text: '95년생 플러터 개발자',
            typoType: TypoType.labelLight,
          ),
          const Spacer(),
          CustomButton(
              label: '소개글 읽기',
              width: CustomW.w2,
              onPressed: () {
                _showButtomSheet(context);
              }),
        ]),
      ),
    );
  }
}
