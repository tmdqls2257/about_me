import 'package:about_me/shared/custom_appbar.dart';
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
        widget: CustomText(text: '지원동기'),
        onPressed: () {
          bottomNavigationProvider.pop();
        },
      ),
    );
  }
}
