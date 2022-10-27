import 'package:about_me/landingPage/keyword_data.dart';

import 'package:flutter/material.dart';

import 'keyword_model.dart';

class KeywordProvider extends ChangeNotifier {
  final List<KeyWord> _keywordList = [];
  get currentKeywords => keywordList;
}
