import 'package:falotier_design/falotier_design.dart';
import 'package:flutter/material.dart';

class AppSnackBar extends StatelessWidget {
  const AppSnackBar({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return buildSnackBar(text, context);
  }

  static SnackBar buildSnackBar(String text, BuildContext context) {
    final theme = AppTheme.of(context);
    return SnackBar(
      content: AppText.paragraphMedium(text),
      backgroundColor: theme.colors.error,
    );
  }
}
