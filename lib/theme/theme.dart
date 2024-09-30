import 'package:flutter/material.dart';

import 'data/data.dart';

export 'data/colors.dart';
export 'data/data.dart';
export 'data/icons.dart';
export 'data/radius.dart';
export 'data/shadows.dart';
export 'data/spacing.dart';

/// All the code has been shamelessly copied from github:
/// https://github.com/aloisdeniel/asgard_shop
/// This is the work of the brilliant Aloïs Deniel
/// Please go watch his video on theming:
/// https://www.youtube.com/watch?v=lTy8odHcS5s

class AppTheme extends InheritedWidget {
  const AppTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
