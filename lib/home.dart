import 'package:about_me/landingPage/first_page.dart';
import 'package:about_me/motive/motive_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'career/career_page.dart';
import 'provider/bottom_navigation_provider.dart';
import 'shared/theme.dart';
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
          bottomNavigationProvider: bottomNavigationProvider),
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
            bottomNavigationProvider.push(index);
          },
        );
      },
    );
  }
}
