import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  // int _index = 0;
  // int get currentPage => _index;
  // updateCurrentPage(int index) {
  //   _index = index;
  //   notifyListeners();
  // }
  final List<int> _indexList = [0];
  int get currentPage => _indexList[_indexList.length - 1];
  push(int index) {
    _indexList.add(index);
    notifyListeners();
  }

  pop() {
    _indexList.removeLast();
    notifyListeners();
  }
}
