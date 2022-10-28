import 'package:about_me/landingPage/keyword_data.dart';

import 'package:flutter/material.dart';

import 'keyword_model.dart';

class KeywordProvider extends ChangeNotifier {
  int _index = 0;
  get allKeywords => keywordList;

  void updateKeyword(int index) {
    // return allKeywords[index];
    _index = index;
  }

  KeyWord currentKeyword() {
    return allKeywords[_index];
  }
}
