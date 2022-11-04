import 'package:flutter/material.dart';

class AppIconsData {
  const AppIconsData({
    required this.icons,
    required this.sizes,
  });

  /// Icons have been exported with "Export Icon Font" Figma plugin.
  factory AppIconsData.regular() => AppIconsData(
        icons: AppIconData.regular(),
        sizes: AppIconSizesData.regular(),
      );

  final AppIconData icons;
  final AppIconSizesData sizes;

  @override
  List<Object?> get props => [
        icons,
        sizes,
      ];
}

class AppIconData {
  const AppIconData({
    required this.addLamp,
    required this.location,
  });

  factory AppIconData.regular() => const AppIconData(
        addLamp: Icons.add,
        location: Icons.location_city,
      );

  final IconData addLamp;
  final IconData location;
}

class AppIconSizesData {
  const AppIconSizesData({
    required this.small,
    required this.regular,
    required this.big,
  });

  factory AppIconSizesData.regular() => const AppIconSizesData(
        small: 16.0,
        regular: 22.0,
        big: 32.0,
      );

  final double small;
  final double regular;
  final double big;
}
