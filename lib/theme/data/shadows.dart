import 'package:flutter/rendering.dart';

class AppShadowsData {
  const AppShadowsData({required this.big});

  factory AppShadowsData.regular() => const AppShadowsData(
        big: BoxShadow(
          blurRadius: 32,
          color: Color(0x44000000),
        ),
      );

  final BoxShadow big;
}
