import 'package:flutter/rendering.dart';

class AppRadiusData {
  const AppRadiusData({
    required this.small,
    required this.regular,
    required this.big,
  });

  const AppRadiusData.regular()
      : small = const Radius.circular(8),
        regular = const Radius.circular(14),
        big = const Radius.circular(20);

  final Radius small;
  final Radius regular;
  final Radius big;

  AppBorderRadiusData asBorderRadius() => AppBorderRadiusData(this);
}

class AppBorderRadiusData {
  const AppBorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.regular);
  BorderRadius get big => BorderRadius.all(_radius.big);

  final AppRadiusData _radius;
}
