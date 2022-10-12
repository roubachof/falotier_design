import 'package:flutter/rendering.dart';

class AppColorsData {
  const AppColorsData({
    required this.accent,
    required this.foreground,
    required this.background,
    required this.foregroundSecondary,
    required this.backgroundSecondary,
    required this.success,
    required this.warning,
    required this.error,
    required this.buttons,
  });

  factory AppColorsData.light() => AppColorsData(
        accent: const Color(0xFF6C61E1),
        foreground: const Color(0xFF28285a),
        background: const Color(0xFFecf5fb),
        foregroundSecondary: const Color(0xFFFFFFFF),
        backgroundSecondary: const Color(0xFF28285a),
        success: const Color(0xFF2cd99b),
        warning: const Color(0xFFffa83c),
        error: const Color(0xFFff7c56),
        buttons: ButtonColorsData.light(),
      );

  factory AppColorsData.dark() => AppColorsData(
        accent: const Color(0xFF6C61E1),
        foreground: const Color(0xFF28285a),
        background: const Color(0xFFecf5fb),
        foregroundSecondary: const Color(0xFFFFFFFF),
        backgroundSecondary: const Color(0xFF28285a),
        success: const Color(0xFF2cd99b),
        warning: const Color(0xFFffa83c),
        error: const Color(0xFFff7c56),
        buttons: ButtonColorsData.light(),
      );

  factory AppColorsData.highContrast() => AppColorsData(
        accent: const Color(0xFF6C61E1),
        foreground: const Color(0xFF28285a),
        background: const Color(0xFFecf5fb),
        foregroundSecondary: const Color(0xFFFFFFFF),
        backgroundSecondary: const Color(0xFF28285a),
        success: const Color(0xFF2cd99b),
        warning: const Color(0xFFffa83c),
        error: const Color(0xFFff7c56),
        buttons: ButtonColorsData.light(),
      );

  final Color accent;
  final Color foreground;
  final Color background;
  final Color foregroundSecondary;
  final Color backgroundSecondary;
  final Color success;
  final Color warning;
  final Color error;

  final ButtonColorsData buttons;
}

class ButtonColorsData {
  const ButtonColorsData({
    required this.primaryBackground,
    required this.primaryForeground,
    required this.secondaryBackground,
    required this.secondaryForeground,
    required this.thirdBackground,
    required this.thirdForeground,
  });

  factory ButtonColorsData.light() => const ButtonColorsData(
        primaryBackground: Color(0xFF6C61E1),
        primaryForeground: Color(0xFFFFFFFF),
        secondaryBackground: Color(0xFFF4F4F5),
        secondaryForeground: Color(0xFF28285a),
        thirdBackground: Color(0x00FFFFFF),
        thirdForeground: Color(0xFF9393AC),
      );

  factory ButtonColorsData.dark() => const ButtonColorsData(
        primaryBackground: Color(0xFF6C61E1),
        primaryForeground: Color(0xFFFFFFFF),
        secondaryBackground: Color(0xFFF4F4F5),
        secondaryForeground: Color(0xFF28285a),
        thirdBackground: Color(0x00FFFFFF),
        thirdForeground: Color(0xFF9393AC),
      );

  final Color primaryBackground;
  final Color primaryForeground;
  final Color secondaryBackground;
  final Color secondaryForeground;
  final Color thirdBackground;
  final Color thirdForeground;
}