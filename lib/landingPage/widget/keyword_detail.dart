import 'package:about_me/shared/shared.dart';
import 'package:flutter/material.dart';

class KeywordDetail extends StatelessWidget {
  const KeywordDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 210,
          padding: const EdgeInsets.fromLTRB(20, 42, 20, 0),
          color: customColor[CustomColor.green],
          child: Stack(children: [
            Positioned(
              right: 0,
              top: 0,
              // child: CloseButton(),
              child: CustomClose(
                onPressed: () {},
              ),
            ),
            Center(
              child: Avatar(
                assetName: 'assets/images/splashImage.png',
                radius: 64,
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
