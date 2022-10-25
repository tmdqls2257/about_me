import 'package:flutter/material.dart';

enum CustomW { w1, w2, w3, w4 }

final customW = {
  CustomW.w1: 87.0,
  CustomW.w2: 120.0,
  CustomW.w3: 151.0,
};

enum CustomColor {
  black,
  lightblack,
  yellow,
  white,
  grey,
  green,
  blue,
  darkGreen,
  crimson,
  purple,
  stroke,
  lightgrey
}

final customColor = {
  CustomColor.black: const Color(0xFF1D1E1F),
  CustomColor.lightblack: const Color(0xFF39393B),
  CustomColor.yellow: const Color(0xFFFFFF7E),
  CustomColor.white: const Color(0xFFFFFFFF),
  CustomColor.grey: const Color(0xFF6F7276),
  CustomColor.lightgrey: const Color(0xFFEBEDEF),
  CustomColor.green: const Color(0xFF07BD82),
  CustomColor.blue: const Color(0xFF3F8FF2),
  CustomColor.darkGreen: const Color(0xFF73CD91),
  CustomColor.crimson: const Color(0xFFFF5A5F),
  CustomColor.purple: const Color(0xFF8D79FE),
  CustomColor.stroke: const Color(0xFFEBEDFF),
};
