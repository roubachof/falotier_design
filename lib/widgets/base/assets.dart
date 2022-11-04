import 'package:falotier_design/falotier_design.dart';

abstract class Assets {
  static const String packageName = 'falotier_design';

  static const String _assetImagePath = 'assets/images';
  static const String _assetAudioPath = 'assets/audio';
  static const String _assetPrefix = 'asset:///';

  static Image appImage(
    Images imageName,
    double? width,
    double? height,
  ) {
    return Image.asset(
      '$_assetImagePath/${imageName.filename}',
      package: packageName,
      width: width,
      height: height,
    );
  }

  static Image image(
    String imageName, {
    double? scale = 2,
    double? width,
    double? height,
  }) {
    return Image.asset(
      '$_assetImagePath/$imageName',
      package: packageName,
      scale: scale,
      width: width,
      height: height,
    );
  }

  static String audio(String audioName) {
    return '$_assetAudioPath/$audioName';
  }

  static String audioWithPrefix(String audioName) {
    return '$_assetPrefix$_assetAudioPath/$audioName';
  }
}

enum Images {
  moon('moon.png'),
  bomb('mac_bombs.png');

  final String filename;

  const Images(this.filename);
}
