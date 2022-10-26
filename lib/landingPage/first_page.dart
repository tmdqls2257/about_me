import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_navigation_provider.dart';
import '../shared/shared.dart';
import 'widget/widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  void _onTapGithup(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context, listen: false);
    bottomNavigationProvider.push(1);
  }

  Future<void> _onTapPopUp(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              width: 302,
              height: 108,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: '이메일: tmdqls2257@gamil.com',
                    ),
                    CustomText(
                      text: '연락처: 010-8345-8387',
                    )
                  ]),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    label: '닫기',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    height: 50,
                    bgColor: CustomColor.lightgrey,
                    typoType: TypoType.h3,
                    textColor: CustomColor.grey,
                    borderRadius:
                        const BorderRadius.only(bottomLeft: Radius.circular(5)),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    label: '연락하기',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    height: 50,
                    bgColor: CustomColor.green,
                    typoType: TypoType.h3,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(5)),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget _learnAboutMeList(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 19, 0, 19),
        child: Column(
          children: [
            LearnMoreAboutMe(
              onTap: _onTapGithup,
              column: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          CustomTextSpan(text: '깃허브', color: CustomColor.green),
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
            const Spacer(),
            LearnMoreAboutMe(
              assetPath: 'assets/icons/chat_icon.svg',
              onTap: _onTapPopUp,
              column: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      const Highlighter(color: CustomColor.blue, width: 66),
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
                    color: CustomColor.grey,
                  )
                ],
              ),
            ),
            const Spacer(),
            LearnMoreAboutMe(
              assetPath: 'assets/icons/feeding_bottle_icon.svg',
              onTap: _onTapPopUp,
              isButton: false,
              column: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: '육아크루 지원동기',
                    typoType: TypoType.bodyBolder,
                  ),
                  CustomText(
                    text: '합류한다면 이런 일을 하고 싶습니다.',
                    typoType: TypoType.bodyLight,
                    color: CustomColor.grey,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/logos/logo.svg',
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
                // const Icon(Icons.notifications_none)
                SvgPicture.asset('assets/icons/bell_light.svg')
              ],
            ),
          ),
          AboutMe(context: context),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _learnAboutMeList(context),
                  KeywordList(content: context)
                ]),
          ),
        ]),
      ),
    );
  }
}
