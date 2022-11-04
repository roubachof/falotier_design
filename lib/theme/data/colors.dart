import 'package:equatable/equatable.dart';
import 'package:falotier_design/theme/utils/named.dart';
import 'package:flutter/rendering.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.accent,
    required this.onAccent,
    required this.foreground,
    required this.background,
    required this.surface,
    required this.darkOverlay,
    required this.enlightened,
    required this.foregroundAtNight,
    required this.foregroundAtNoon,
    required this.backgroundSecondary,
    required this.success,
    required this.warning,
    required this.error,
    required this.buttons,
  });

  factory AppColorsData.light() => AppColorsData(
        accent: const Color(0xFF6C61E1),
        onAccent: const Color(0xFF050505),
        foreground: const Color(0xFF28285a),
        background: const Color(0xFFecf5fb),
        surface: const Color(0xFF000000),
        darkOverlay: const Color(0xFF000000).withOpacity(0.8),
        enlightened: const Color(0xFFffa726).withOpacity(0.2),
        foregroundAtNight: const Color(0xFFFFFFFF),
        foregroundAtNoon: const Color(0xFF222222),
        backgroundSecondary: const Color(0xFF28285a),
        success: const Color(0xFF2cd99b),
        warning: const Color(0xFFffa83c),
        error: const Color(0xFFff7c56),
        buttons: ButtonColorsData.light(),
      );

  factory AppColorsData.dark() => AppColorsData(
        accent: const Color(0xFFffa726),
        onAccent: const Color(0xFF050505),
        foreground: const Color(0xFFf5f5f5),
        background: const Color(0xFF000000),
        surface: const Color(0xFF080808),
        darkOverlay: const Color(0xFF000000).withOpacity(0.7),
        enlightened: const Color(0xFFffa726).withOpacity(0.2),
        foregroundAtNight: const Color(0xFF777777),
        foregroundAtNoon: const Color(0xFFFFFFFF),
        backgroundSecondary: const Color(0xFF050505),
        success: const Color(0xFF2cd99b),
        warning: const Color(0xFFffa83c),
        error: const Color(0xFFf4511e),
        buttons: ButtonColorsData.dark(),
      );

  factory AppColorsData.highContrast() => AppColorsData(
        accent: const Color(0xFF6C61E1),
        onAccent: const Color(0xFF050505),
        foreground: const Color(0xFF28285a),
        background: const Color(0xFFecf5fb),
        surface: const Color(0xFF000000),
        darkOverlay: const Color(0xFF000000),
        enlightened: const Color(0xFFffa726),
        foregroundAtNight: const Color(0xFFFFFFFF),
        foregroundAtNoon: const Color(0xFF222222),
        backgroundSecondary: const Color(0xFF28285a),
        success: const Color(0xFF2cd99b),
        warning: const Color(0xFFffa83c),
        error: const Color(0xFFff7c56),
        buttons: ButtonColorsData.light(),
      );

  final Color accent;
  final Color onAccent;
  final Color foreground;
  final Color background;
  final Color surface;
  final Color darkOverlay;
  final Color enlightened;
  final Color foregroundAtNight;
  final Color foregroundAtNoon;
  final Color backgroundSecondary;
  final Color success;
  final Color warning;
  final Color error;

  final ButtonColorsData buttons;

  @override
  List<Object?> get props => [
        accent.named('accent'),
        foreground.named('foreground'),
        background.named('background'),
        foregroundAtNight.named('foregroundAtNight'),
        backgroundSecondary.named('backgroundSecondary'),
        success.named('success'),
        warning.named('warning'),
        error.named('error'),
      ];
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
