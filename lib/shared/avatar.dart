import 'package:flutter/material.dart';

class Avatar extends CircleAvatar {
  final String assetName;

  Avatar({super.key, required this.assetName})
      : super(
          backgroundImage: AssetImage(
            assetName,
          ),
          radius: 30,
        );
}
