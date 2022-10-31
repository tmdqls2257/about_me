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
        child: LayoutBuilder(
          builder: (context, constrains) => Column(
            children: [
              Image.asset(
                'assets/images/chat_image.png',
                width: 150,
                height: 120,
              ),
              const SizedBox(
                height: 30.23,
              ),
              CustomScrollbar(
                crossAxis: CrossAxisAlignment.center,
                height: constrains.maxHeight - 151,
                listWidget: [
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
                  const SizedBox(
                    height: 14,
                  ),
                  CustomText(
                    text: '1. 스타트업에서 여러가지 역량을 쌓기 위해',
                    typoType: TypoType.h2,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomText(
                    text: '기획, 브랜딩 등 다양한 역량을 키우기 위해 지원하게 되었습니다.',
                    typoType: TypoType.bodyLight,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomText(
                    text: '2. 실효성',
                    typoType: TypoType.h2,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomText(
                    text: '에로 부터 아이 하나를 키우기 위해선 온 마을이 동원되어야한다는 이야기가 있습니다.',
                    typoType: TypoType.bodyLight,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomText(
                    text: '친정 부모님, 시부모님, 형제자매, 시누이 등등 온 가족이 갓난아기를 번갈아 돌보았습니다.',
                    typoType: TypoType.bodyLight,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomText(
                    text:
                        '인류 역사에 있어서 협업 육아는 반드시 필요하고 이러한 서비스가 크게 성공할 것이라고 생각하여 지원하게 되었습니다.',
                    typoType: TypoType.bodyLight,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
