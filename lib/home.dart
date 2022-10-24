import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'shared/shared.dart';
import 'web_view_github.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget aboutMe(BuildContext context) {
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
            onPressed: () {},
          ),
        ]),
      ),
    );
  }

  void onTapGithup(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WebViewGithub()),
    );
  }

  void onTapPopUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WebViewGithub()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/logo.svg',
          width: 94,
        ),
        backgroundColor: customColor[CustomColor.white],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButtonApp(),
                const Icon(Icons.notifications_none)
              ],
            ),
          ),
          aboutMe(context),
          SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 19, 14, 19),
              child: Column(
                children: [
                  LearnMoreAboutMe(
                    onTap: onTapGithup,
                    column: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: '개발 실력이 더 궁금하다면?',
                          typoType: TypoType.bodyBolder,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            const Highlighter(
                              color: CustomColor.green,
                              width: 38,
                            ),
                            RichText(
                              text: CustomTextSpan(children: [
                                CustomTextSpan(
                                    text: '깃허브', color: CustomColor.green),
                                CustomTextSpan(
                                  text: '에서 커밋로그를 보실 수 있어요!',
                                )
                              ]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  LearnMoreAboutMe(
                    assetPath: 'assets/icons/chat_icon.svg',
                    onTap: onTapPopUp,
                    column: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            const Highlighter(
                                color: CustomColor.blue, width: 66),
                            CustomText(
                              text: '연락처 보기',
                              typoType: TypoType.bodyBolder,
                              color: CustomColor.blue,
                            ),
                          ],
                        ),
                        CustomText(
                          text: '합격 결과는 여기로 통보해 주세요',
                          typoType: TypoType.bodyLight,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class LearnMoreAboutMe extends StatelessWidget {
  final String assetPath;
  final Column column;
  final void Function(BuildContext) onTap;

  const LearnMoreAboutMe({
    Key? key,
    this.assetPath = '',
    required this.column,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      height: 68,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: customColor[CustomColor.stroke]!,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Row cont,
        children: [
          if (assetPath != '') SvgPicture.asset(assetPath),
          column,
          CircleButton(onTap: onTap)
        ],
      ),
    );
  }
}
