import 'package:falotier_design/theme/theme.dart';
import 'package:flutter/widgets.dart';

import 'padding.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.decoration,
    this.foregroundDecoration,
    this.alignment,
    this.clipBehavior = Clip.none,
    this.constraints,
    this.transform,
    this.transformAlignment,
    this.child,
  });

  final AppEdgeInsets? padding;
  final AppEdgeInsets? margin;
  final Color? backgroundColor;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final Clip clipBehavior;
  final BoxConstraints? constraints;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      width: width,
      height: height,
      padding: padding?.toEdgeInsets(theme),
      margin: margin?.toEdgeInsets(theme),
      color: backgroundColor,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      alignment: alignment,
      clipBehavior: clipBehavior,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      child: child,
    );
  }
}
