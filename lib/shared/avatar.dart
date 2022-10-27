import 'package:flutter/material.dart';

class Avatar extends CircleAvatar {
  final String assetName;

  Avatar({super.key, required this.assetName, super.radius = 30})
      : super(
          backgroundImage: AssetImage(
            assetName,
          ),
        );
}
