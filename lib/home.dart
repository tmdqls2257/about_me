import 'package:about_me/shared/custom_color.dart';
import 'package:about_me/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'shared/custom_dropdown.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
      body: Column(children: [
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
        Container(
          color: customColor[CustomColor.yellow],
          width: MediaQuery.of(context).size.width,
          height: 272,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
            child: Column(children: [
              CustomText(
                text: '저를 소개합니다 :)',
                typoType: TypoType.h1,
              )
            ]),
          ),
        )
      ]),
    );
  }
}
