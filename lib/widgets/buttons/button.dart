import 'package:flutter/material.dart';
import 'package:otio_design/theme/theme.dart';

abstract class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const BaseButton(this.text, this.onPressed, {Key? key}) : super(key: key);

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

class ButtonPrimary extends BaseButton {
  const ButtonPrimary(String text, VoidCallback? onPressed, {Key? key})
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

class ButtonSecondary extends BaseButton {
  const ButtonSecondary(String text, VoidCallback? onPressed, {Key? key})
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

class ButtonThird extends BaseButton {
  const ButtonThird(String text, VoidCallback? onPressed, {Key? key})
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
