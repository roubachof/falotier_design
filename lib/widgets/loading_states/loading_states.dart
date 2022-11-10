import 'package:falotier_design/falotier_design.dart';
import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({this.loadingMessage, super.key});

  final String? loadingMessage;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final loadingIndicator =
        CircularProgressIndicator(color: theme.colors.accent);

    if (loadingMessage != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          loadingIndicator,
          const AppGap.regular(),
          AppText.paragraphMedium(loadingMessage!),
        ],
      );
    }

    return loadingIndicator;
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

class AppLoadingText extends StatelessWidget {
  const AppLoadingText({
    Key? key,
    this.loadingMessage = 'loading',
  }) : super(key: key);

  final String loadingMessage;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      duration: const Duration(seconds: 200),
      tween: IntTween(begin: 0, end: 200 * 1000),
      builder: (BuildContext context, value, Widget? child) {
        // Funny little easy animation
        String dots = '';

        final loadingDurationMilliseconds = value % 1000;
        if (loadingDurationMilliseconds > 750) {
          dots = '...';
        } else if (loadingDurationMilliseconds > 500) {
          dots = '..';
        } else if (loadingDurationMilliseconds > 250) {
          dots = '.';
        }

        return AppText.paragraphLarge('$loadingMessage$dots');
      },
    );
  }
}
