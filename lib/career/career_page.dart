import 'package:about_me/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_navigation_provider.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        appBar: CustomAppBar(
          widget: CustomText(
            text: '경력기술서',
            typoType: TypoType.h3,
          ),
          onPressedBack: () {
            bottomNavigationProvider.pop();
          },
          onPressedHome: () {},
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: CustomText(
              text: '경력기술서',
              typoType: TypoType.h3Light,
            ),
          ),
          Divider(color: customColor[CustomColor.stroke]),
          Padding(
              padding: const EdgeInsets.fromLTRB(14, 20, 0, 0),
              child: CustomScrollbar(
                height: constraints.maxHeight - 167,
                listWidget: [
                  CustomText(
                    text: '테스트2',
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
