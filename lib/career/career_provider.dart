import 'package:about_me/career/career_data.dart';
import 'package:flutter/material.dart';

import 'career_model.dart';

class CareerProvider extends ChangeNotifier {
  List<Career> get allCareerData => careerDataList;
}
