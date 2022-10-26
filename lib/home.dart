import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'carouselSlider/carouse.dart';
import 'provider/bottom_navigation_provider.dart';
import 'shared/shared.dart';
import 'web_view_github.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void onTapGithup(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WebViewGithub()),
    );
  }

  Future<void> onTapPopUp(BuildContext context) {
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

  Widget learnAboutMeList(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 19, 0, 19),
        child: Column(
          children: [
            _LearnMoreAboutMe(
              onTap: onTapGithup,
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
            _LearnMoreAboutMe(
              assetPath: 'assets/icons/chat_icon.svg',
              onTap: onTapPopUp,
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
            _LearnMoreAboutMe(
              assetPath: 'assets/icons/feeding_bottle_icon.svg',
              onTap: onTapPopUp,
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

  Widget keyWordList(BuildContext content) {
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
        // const SizedBox(
        //   height: 20,
        // ),
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

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);

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
          aboutMe(context),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [learnAboutMeList(context), keyWordList(context)]),
          ),
        ]),
      ),
      bottomNavigationBar: _BottomNavigationBar(
          bottomNavigationProvider: bottomNavigationProvider),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           'assets/icons/home_pink.svg',
      //           color: customColor[CustomColor.black],
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/icons/home_pink.svg',
      //         color: customColor[CustomColor.black],
      //       ),
      //       label: 'movies',
      //     )
      //   ],
      //   selectedItemColor: customColor[CustomColor.crimson],
      //   onTap: (index) {
      //     bottomNavigationProvider.updateCurrentPage(index);
      //   },
      // ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  final BottomNavigationProvider bottomNavigationProvider;

  const _BottomNavigationBar({Key? key, required this.bottomNavigationProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
      builder: (context, provider, widget) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home_pink.svg',
              ),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/flower.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/flower_pink.svg',
              ),
              label: '깃허브',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/chat.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/chat_pink.svg',
              ),
              label: '지원동기',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/flower.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/flower_pink.svg',
              ),
              label: '경력기술서',
            ),
          ],
          currentIndex: bottomNavigationProvider.currentPage,
          selectedItemColor: customColor[CustomColor.crimson],
          onTap: (index) {
            bottomNavigationProvider.updateCurrentPage(index);
          },
        );
      },
    );
  }
}

class _LearnMoreAboutMe extends StatelessWidget {
  final String assetPath;
  final Column column;
  final bool isButton;
  final void Function(BuildContext) onTap;

  const _LearnMoreAboutMe({
    Key? key,
    this.assetPath = '',
    required this.column,
    required this.onTap,
    this.isButton = true,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center, //Center Row cont,
            children: [
              if (assetPath != '') SvgPicture.asset(assetPath),
              if (assetPath != '')
                const SizedBox(
                  width: 16,
                ),
              column,
            ],
          ),
          if (isButton) CircleButton(onTap: onTap)
        ],
      ),
    );
  }
}
