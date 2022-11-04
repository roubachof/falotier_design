import 'package:falotier_design/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

enum AppGapSize {
  none,
  small,
  semiSmall,
  regular,
  semiBig,
  big,
  semiHuge,
  huge,
}

extension AppGapSizeExtension on AppGapSize {
  double getSpacing(AppThemeData theme) {
    switch (this) {
      case AppGapSize.none:
        return 0;
      case AppGapSize.small:
        return theme.spacing.small;
      case AppGapSize.semiSmall:
        return theme.spacing.semiSmall;
      case AppGapSize.regular:
        return theme.spacing.regular;
      case AppGapSize.semiBig:
        return theme.spacing.semiBig;
      case AppGapSize.big:
        return theme.spacing.big;
      case AppGapSize.semiHuge:
        return theme.spacing.semiHuge;
      case AppGapSize.huge:
        return theme.spacing.huge;
    }
  }
}

class AppGap extends StatelessWidget {
  const AppGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const AppGap.small({
    Key? key,
  })  : size = AppGapSize.small,
        super(key: key);

  const AppGap.semiSmall({
    Key? key,
  })  : size = AppGapSize.semiSmall,
        super(key: key);

  const AppGap.regular({
    Key? key,
  })  : size = AppGapSize.regular,
        super(key: key);

  const AppGap.semiBig({
    Key? key,
  })  : size = AppGapSize.semiBig,
        super(key: key);

  const AppGap.big({
    Key? key,
  })  : size = AppGapSize.big,
        super(key: key);

  const AppGap.semiHuge({
    Key? key,
  })  : size = AppGapSize.semiHuge,
        super(key: key);

  const AppGap.huge({
    Key? key,
  })  : size = AppGapSize.huge,
        super(key: key);

  final AppGapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
