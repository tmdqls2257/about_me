import 'package:flutter/material.dart';

import 'shared/custom_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'sdsdsd'),
      ),
    );
  }
}
