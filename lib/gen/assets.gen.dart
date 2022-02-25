/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get addGroceryIcon =>
      const AssetGenImage('assets/images/add_grocery_icon.png');
  AssetGenImage get bannerAd =>
      const AssetGenImage('assets/images/banner_ad.png');
  AssetGenImage get barcode => const AssetGenImage('assets/images/barcode.png');
  AssetGenImage get candy => const AssetGenImage('assets/images/candy.png');
  AssetGenImage get cartIcon =>
      const AssetGenImage('assets/images/cart_icon.png');
  AssetGenImage get editIcon =>
      const AssetGenImage('assets/images/edit_icon.png');
  AssetGenImage get female => const AssetGenImage('assets/images/female.png');
  AssetGenImage get minusIcon =>
      const AssetGenImage('assets/images/minus_icon.png');
  AssetGenImage get person => const AssetGenImage('assets/images/person.png');
  AssetGenImage get plusIcon =>
      const AssetGenImage('assets/images/plus_icon.png');
  AssetGenImage get popKartLogo =>
      const AssetGenImage('assets/images/pop_kart_logo.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
