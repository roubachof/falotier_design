import 'package:falotier_design/theme/theme.dart';
import 'package:flutter/material.dart';

abstract class AppBaseButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const AppBaseButton(this.text, this.onPressed, {Key? key}) : super(key: key);

  ButtonStyle getBaseStyle(BuildContext context) {
    final padding = AppTheme.of(context).spacing.asInsets().regular;
    final radius = AppTheme.of(context).radius.small;

    return TextButton.styleFrom(
      minimumSize: const Size(88, 50),
      padding: padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(radius),
      ),
    );
  }

  ButtonStyle getImplementationStyle(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final textPrimaryButtonStyle =
        AppTheme.of(context).typography.button.primary;
    return TextButton(
        style: getBaseStyle(context).merge(
          getImplementationStyle(context),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textPrimaryButtonStyle,
        ));
  }
}

class AppButtonPrimary extends AppBaseButton {
  const AppButtonPrimary(String text, VoidCallback? onPressed, {Key? key})
      : super(text, onPressed, key: key);

  @override
  ButtonStyle getImplementationStyle(BuildContext context) {
    final colors = AppTheme.of(context).colors.buttons;
    return TextButton.styleFrom(
      foregroundColor: colors.primaryForeground,
      backgroundColor: colors.primaryBackground,
    );
  }
}

class AppButtonSecondary extends AppBaseButton {
  const AppButtonSecondary(String text, VoidCallback? onPressed, {Key? key})
      : super(text, onPressed, key: key);

  @override
  ButtonStyle getImplementationStyle(BuildContext context) {
    final colors = AppTheme.of(context).colors.buttons;
    return TextButton.styleFrom(
      foregroundColor: colors.secondaryForeground,
      backgroundColor: colors.secondaryBackground,
    );
  }
}

class AppButtonThird extends AppBaseButton {
  const AppButtonThird(String text, VoidCallback? onPressed, {Key? key})
      : super(text, onPressed, key: key);

  @override
  ButtonStyle getImplementationStyle(BuildContext context) {
    final colors = AppTheme.of(context).colors.buttons;
    return TextButton.styleFrom(
      foregroundColor: colors.thirdForeground,
      backgroundColor: colors.thirdBackground,
    );
  }
}
