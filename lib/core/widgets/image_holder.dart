import 'package:flutter/material.dart';

class ImageHolder extends StatelessWidget {
  const ImageHolder(
    this.imagePath, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.fill,
  });
  final String imagePath;
  final double? width, height;
  final BoxFit fit;
  @override
  Widget build(BuildContext context) {
    if (imagePath.startsWith('http')) {
      return Image.network(
        imagePath,
        width: width,
        height: height,
        fit: fit,
      );
    } else {
      return Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit,
      );
    }
  }
}
