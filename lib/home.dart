import 'package:about_me/landingPage/first_page.dart';
import 'package:about_me/landingPage/widget/keyword_detail.dart';
import 'package:about_me/motive/motive_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'career/career_page.dart';
import 'provider/bottom_navigation_provider.dart';
import 'shared/shared.dart';
import 'web_view_github.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _navigationBody(
      BottomNavigationProvider bottomNavigationProvider, BuildContext context) {
    switch (bottomNavigationProvider.currentPage) {
      case 0:
        return const FirstPage();
      case 1:
        return WebViewGithub();
      case 2:
        return const MotivePage();
      case 3:
        return const CareerPage();
      case 4:
        return const KeywordDetail();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      body: _navigationBody(bottomNavigationProvider, context),
      bottomNavigationBar: _BottomNavigationBar(
        bottomNavigationProvider: bottomNavigationProvider,
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  final BottomNavigationProvider bottomNavigationProvider;
  const _BottomNavigationBar({
    Key? key,
    required this.bottomNavigationProvider,
  }) : super(key: key);

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
              icon: svgIcon[SvgIconType.home] as Widget,
              activeIcon: svgIcon[SvgIconType.homePink] as Widget,
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: svgIcon[SvgIconType.flower] as Widget,
              activeIcon: svgIcon[SvgIconType.flowerPink] as Widget,
              label: '깃허브',
            ),
            BottomNavigationBarItem(
              icon: svgIcon[SvgIconType.chatIcon] as Widget,
              activeIcon: svgIcon[SvgIconType.chatIconPink] as Widget,
              label: '지원동기',
            ),
            BottomNavigationBarItem(
              icon: svgIcon[SvgIconType.myProfile] as Widget,
              activeIcon: svgIcon[SvgIconType.myProfilePink] as Widget,
              label: '경력기술서',
            ),
          ],
          currentIndex: bottomNavigationProvider.currentPage > 3
              ? bottomNavigationProvider.prevPage
              : bottomNavigationProvider.currentPage,
          selectedItemColor: customColor[CustomColor.crimson],
          onTap: (index) {
            bottomNavigationProvider.push(index);
          },
        );
      },
    );
  }
}
