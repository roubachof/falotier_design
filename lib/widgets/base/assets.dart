import 'package:falotier_design/falotier_design.dart';

abstract class Assets {
  static const String packageName = 'falotier_design';

  static const String _assetImagePath = 'assets/images';
  static const String _assetAudioPath = 'assets/audio';
  static const String _assetPrefix = 'asset:///';

  static Image image(String imageName) {
    return Image.asset(
      '$_assetImagePath/$imageName',
      package: packageName,
    );
  }

  static String audio(String audioName) {
    return '$_assetAudioPath/$audioName';
  }

  static String audioWithPrefix(String audioName) {
    return '$_assetPrefix$_assetAudioPath/$audioName';
  }
}

abstract class Images {
  static Image get moon => Assets.image('moon.png');
}
