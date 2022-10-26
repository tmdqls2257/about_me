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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 462,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseButton(
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            SizedBox(
              height: 400,
              child: Scrollbar(
                thumbVisibility: true,
                thickness: 3,
                radius: const Radius.circular(2),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                    CustomText(text: 'sdsds'),
                  ],
                ),
              ),
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
            assetName: 'assets/images/splashImage.png',
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
