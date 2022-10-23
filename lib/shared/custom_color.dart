import 'package:flutter/material.dart';

enum CustomColor {
  black,
  yellow,
  white,
  grey,
  green,
  blue,
  darkGreen,
  crimson,
  purple,
  stroke
}

Map<CustomColor, Color> customColor = {
  CustomColor.black: const Color(0xFF1D1E1F),
  CustomColor.yellow: const Color(0xFFFFFF7E),
  CustomColor.white: const Color(0xFFFFFFFF),
  CustomColor.grey: const Color(0xFF6F7276),
  CustomColor.green: const Color(0xFF07BD82),
  CustomColor.blue: const Color(0xFF3F8FF2),
  CustomColor.darkGreen: const Color(0xFF73CD91),
  CustomColor.crimson: const Color(0xFFFF5A5F),
  CustomColor.purple: const Color(0xFF8D79FE),
  CustomColor.stroke: const Color(0xFFEBEDFF),
};
