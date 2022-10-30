import 'package:about_me/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_navigation_provider.dart';

class MotivePage extends StatelessWidget {
  const MotivePage({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      appBar: CustomAppBar(
        onPressedHome: () {},
        widget: CustomText(
          text: '지원동기',
          typoType: TypoType.h3,
        ),
        onPressedBack: () {
          bottomNavigationProvider.pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.7),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/chat_image.png',
                width: 150,
                height: 120,
              ),
              const SizedBox(
                height: 30.23,
              ),
              CustomText(
                text: '지원동기',
                typoType: TypoType.h2,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: '지원동기',
                typoType: TypoType.labelLight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
