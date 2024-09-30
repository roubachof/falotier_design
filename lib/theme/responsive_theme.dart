import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data/form_factor.dart';
import 'theme.dart';

enum AppThemeColorMode {
  light,
  dark,
  highContrast,
}

/// Updates automatically the [AppTheme] regarding the current [MediaQuery],
/// as soon as the [theme] isn't overridden.
class AppResponsiveTheme extends StatelessWidget {
  const AppResponsiveTheme({
    super.key,
    required this.appLogo,
    required this.child,
    this.darkAppLogo,
    this.colorMode,
    this.formFactor,
  });

  final AppThemeColorMode? colorMode;
  final AppFormFactor? formFactor;
  final Widget child;
  final PictureProvider appLogo;
  final PictureProvider? darkAppLogo;

  static AppThemeColorMode colorModeOf(BuildContext context) {
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final useDarkTheme = platformBrightness == ui.Brightness.dark;
    if (useDarkTheme) {
      return AppThemeColorMode.dark;
    }
    final highContrast = MediaQuery.highContrastOf(context);
    if (highContrast) {
      return AppThemeColorMode.highContrast;
    }

    return AppThemeColorMode.light;
  }

  static AppFormFactor formFactorOf(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    if (mediaQuery.size.width < 200) {
      return AppFormFactor.small;
    }

    return AppFormFactor.medium;
  }

  @override
  Widget build(BuildContext context) {
    var theme = AppThemeData.regular();

    /// Updating the colors for the current brightness
    final colorMode = this.colorMode ?? colorModeOf(context);
    switch (colorMode) {
      case AppThemeColorMode.dark:
        theme = theme.withColors(AppColorsData.dark());
        break;
      case AppThemeColorMode.highContrast:
        theme = theme.withColors(AppColorsData.highContrast());
        break;
      case AppThemeColorMode.light:
        break;
    }

    // Updating the sizes for current form factor.
    var formFactor = this.formFactor ?? formFactorOf(context);
    theme = theme.withFormFactor(formFactor);
    if (formFactor == AppFormFactor.small) {
      // theme = theme.withTypography(PageTypographyData.small());
      throw Exception();
    }

    return AppTheme(
      data: theme,
      child: child,
    );
  }
}
