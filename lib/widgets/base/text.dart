import 'package:falotier_design/theme/theme.dart';
import 'package:flutter/widgets.dart';

enum AppTextLevel {
  pageTitle,
  subtitleLarge,
  subtitleMedium,
  paragraphLarge,
  paragraphMedium,
}

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.level = AppTextLevel.paragraphMedium,
    this.softWrap,
  }) : super(key: key);

  const AppText.paragraphMedium(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.softWrap,
  })  : level = AppTextLevel.paragraphMedium,
        super(key: key);

  const AppText.paragraphLarge(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.softWrap,
  })  : level = AppTextLevel.paragraphLarge,
        super(key: key);

  const AppText.subtitleMedium(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.softWrap,
  })  : level = AppTextLevel.subtitleMedium,
        super(key: key);

  const AppText.subtitleLarge(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.softWrap,
  })  : level = AppTextLevel.subtitleLarge,
        super(key: key);

  const AppText.pageTitle(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.softWrap,
  })  : level = AppTextLevel.pageTitle,
        super(key: key);

  final String data;
  final AppTextLevel level;
  final Color? color;
  final double? fontSize;
  final int? maxLines;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    final style = () {
      switch (level) {
        case AppTextLevel.paragraphMedium:
          return theme.typography.page.paragraphMedium;
        case AppTextLevel.paragraphLarge:
          return theme.typography.page.paragraphLarge;
        case AppTextLevel.subtitleMedium:
          return theme.typography.page.subtitleMedium;
        case AppTextLevel.subtitleLarge:
          return theme.typography.page.subtitleLarge;
        case AppTextLevel.pageTitle:
          return theme.typography.page.pageTitle;
      }
    }();
    return Text(
      data,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
      ),
      softWrap: softWrap,
      textAlign: TextAlign.start,
      maxLines: maxLines,
    );
  }
}
