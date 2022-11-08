import 'package:falotier_design/falotier_design.dart';
import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return CircularProgressIndicator(color: theme.colors.accent);
  }
}

class AppErrorWidget extends StatelessWidget {
  final String _errorMessage;
  final void Function() _onTap;
  final String buttonText;

  const AppErrorWidget(
    this._errorMessage,
    this._onTap, {
    super.key,
    this.buttonText = 'Retry',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.appImage(Images.bomb, 80, 80),
          const AppGap.regular(),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppText.paragraphMedium(
                  _errorMessage,
                  maxLines: 2,
                ),
                const AppGap.regular(),
                AppButtonPrimary(buttonText, _onTap),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
