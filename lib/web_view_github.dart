import 'dart:async';

import 'package:about_me/provider/bottom_navigation_provider.dart';
import 'package:about_me/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewGithub extends StatelessWidget {
  WebViewGithub({super.key});
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
        appBar: CustomAppBar(
          onPressedHome: () {
            bottomNavigationProvider.push(0);
          },
          isHome: true,
          onPressedBack: () {
            bottomNavigationProvider.pop();
          },
          widget: CustomText(text: "tmdqls2257's github"),
        ),
        body: WebView(
          initialUrl: 'https://github.com/tmdqls2257',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
