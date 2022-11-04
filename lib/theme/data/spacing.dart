import 'package:flutter/widgets.dart';

class AppSpacingData {
  const AppSpacingData({
    required this.small,
    required this.semiSmall,
    required this.regular,
    required this.semiBig,
    required this.big,
    required this.semiHuge,
    required this.huge,
  });

  factory AppSpacingData.regular() => const AppSpacingData(
        small: 5,
        semiSmall: 10,
        regular: 15,
        semiBig: 25,
        big: 35,
        semiHuge: 50,
        huge: 70,
      );

  final double small;
  final double semiSmall;
  final double regular;
  final double semiBig;
  final double big;
  final double semiHuge;
  final double huge;

  AppEdgeInsetsSpacingData asInsets() => AppEdgeInsetsSpacingData(this);
}

class AppEdgeInsetsSpacingData {
  const AppEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);
  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);
  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);
  EdgeInsets get big => EdgeInsets.all(_spacing.big);
  EdgeInsets get semiHuge => EdgeInsets.all(_spacing.semiHuge);
  EdgeInsets get huge => EdgeInsets.all(_spacing.huge);

  final AppSpacingData _spacing;
}
