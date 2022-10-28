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
    return Scaffold(
      appBar: CustomAppBar(
        widget: CustomText(text: '경력기술서'),
        onPressedBack: () {
          bottomNavigationProvider.pop();
        },
        onPressedHome: () {},
      ),
    );
  }
}
