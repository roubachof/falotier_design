import 'package:falotier_design/falotier_design.dart';
import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData? icon;
  final String? text;

  const AppFloatingActionButton({
    required this.onPressed,
    this.icon,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    if (icon != null && text != null) {
      return FloatingActionButton.extended(
        backgroundColor: theme.colors.accent,
        onPressed: onPressed,
        label: AppText.paragraphLarge(text!, color: theme.colors.onAccent),
        icon: AppIcon.regular(
          icon!,
          color: theme.colors.onAccent,
        ),
      );
    }

    throw Exception('For now our FAB only support text with icons');
  }
}
