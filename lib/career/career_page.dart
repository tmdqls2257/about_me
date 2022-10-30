import 'package:about_me/shared/shared.dart';
import 'package:about_me/utils/url_parser_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_navigation_provider.dart';
import 'career_model.dart';
import 'career_provider.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  Widget careerWidget(Career career) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 14,
        ),
        CustomText(
          textAlign: TextAlign.start,
          text: career.title,
          typoType: TypoType.h2,
        ),
        CustomText(
          textAlign: TextAlign.start,
          text: career.period,
          typoType: TypoType.bodyLight,
        ),
        CustomText(
          textAlign: TextAlign.start,
          text: career.content,
          typoType: TypoType.bodyLight,
        ),
        Row(
          children: [
            if (career.webDeployLink != '')
              CustomOutlinedBtn(
                onPressed: () {
                  urlParserRoute(career.webDeployLink);
                },
                label: 'webDeployLink',
              ),
            if (career.webDeployLink != '')
              const SizedBox(
                width: 14,
              ),
            if (career.playStoreLink != '')
              CustomOutlinedBtn(
                onPressed: () {
                  urlParserRoute(career.playStoreLink);
                },
                label: 'playStoreLink',
              ),
            if (career.playStoreLink != '')
              const SizedBox(
                width: 14,
              ),
            if (career.appStoreLink != '')
              CustomOutlinedBtn(
                onPressed: () {
                  urlParserRoute(career.appStoreLink);
                },
                label: 'appStoreLink',
              ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);
    CareerProvider careerProvider = Provider.of<CareerProvider>(context);
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
            padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
            child: CustomScrollbar(
              height: constraints.maxHeight - 167,
              listWidget: careerProvider.allCareerData
                  .map((career) => careerWidget(career))
                  .toList(),
            ),
          ),
        ]),
      ),
    );
  }
}
