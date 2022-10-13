import 'package:flutter/rendering.dart';

abstract class TypographyConstants {
  static const String displayBold = 'SFProDisplayBold';
  static const String textBold = 'SFProTextBold';
  static const String textMedium = 'SFProTextMedium';
  static const String textRegular = 'SFProTextRegular';
  static const String textSemibold = 'SFProTextSemibold';

  static const String packageName = 'otio_design';
}

class AppTypographyData {
  final PageTypographyData page;
  final ButtonTypographyData button;

  const AppTypographyData({
    required this.page,
    required this.button,
  });

  factory AppTypographyData.regular() => AppTypographyData(
        page: PageTypographyData.regular(),
        button: ButtonTypographyData.regular(),
      );
}

class PageTypographyData implements TypographyConstants {
  const PageTypographyData({
    required this.paragraphLarge,
    required this.paragraphMedium,
    required this.pageTitle,
    required this.subtitleLarge,
    required this.subtitleMedium,
  });

  factory PageTypographyData.regular() => const PageTypographyData(
        pageTitle: TextStyle(
          fontFamily: TypographyConstants.displayBold,
          package: TypographyConstants.packageName,
          fontSize: 32,
          height: 1.3,
          letterSpacing: 0.4,
          decoration: TextDecoration.none,
        ),
        subtitleLarge: TextStyle(
          fontFamily: TypographyConstants.displayBold,
          package: TypographyConstants.packageName,
          fontSize: 20,
          height: 1.4,
          letterSpacing: -0.2,
          decoration: TextDecoration.none,
        ),
        subtitleMedium: TextStyle(
          fontFamily: TypographyConstants.textBold,
          package: TypographyConstants.packageName,
          fontSize: 17,
          height: 1.3,
          letterSpacing: -0.4,
          decoration: TextDecoration.none,
        ),
        paragraphLarge: TextStyle(
          fontFamily: TypographyConstants.textRegular,
          package: TypographyConstants.packageName,
          fontSize: 17,
          height: 1.3,
          letterSpacing: -0.4,
          decoration: TextDecoration.none,
        ),
        paragraphMedium: TextStyle(
          fontFamily: TypographyConstants.textMedium,
          package: TypographyConstants.packageName,
          fontSize: 14,
          height: 1.3,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle pageTitle;
  final TextStyle subtitleLarge;
  final TextStyle subtitleMedium;
  final TextStyle paragraphLarge;
  final TextStyle paragraphMedium;
}

class ButtonTypographyData {
  const ButtonTypographyData({
    required this.primary,
    required this.secondary,
    required this.third,
  });

  factory ButtonTypographyData.regular() => const ButtonTypographyData(
        primary: TextStyle(
          fontFamily: TypographyConstants.textSemibold,
          package: TypographyConstants.packageName,
          fontSize: 17,
          height: 1.3,
          letterSpacing: -0.4,
          decoration: TextDecoration.none,
        ),
        secondary: TextStyle(
          fontFamily: TypographyConstants.displayBold,
          package: TypographyConstants.packageName,
          fontSize: 20,
          height: 1.4,
          letterSpacing: -0.2,
          decoration: TextDecoration.none,
        ),
        third: TextStyle(
          fontFamily: TypographyConstants.textBold,
          package: TypographyConstants.packageName,
          fontSize: 14,
          height: 1.4,
          letterSpacing: -0.3,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle primary;
  final TextStyle secondary;
  final TextStyle third;
}
