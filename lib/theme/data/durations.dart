class AppDurationsData {
  const AppDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory AppDurationsData.regular() => const AppDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );

  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;
}
