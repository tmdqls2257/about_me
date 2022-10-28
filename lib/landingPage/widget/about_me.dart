import 'package:flutter/material.dart';

import '../../shared/custom_scrollbar.dart';
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
                  child: CustomClose(
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              ],
            ),
            CustomScrollbar(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              listWidget: [
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
