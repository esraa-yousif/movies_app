import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
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
      if(kIsWeb){
        return Image.network(
        imagePath,
        width: width,
        height: height,
        fit: fit,
      );
      }
      else{return CachedNetworkImage(
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          color: Colors.transparent,
        ),
        placeholder: (context, url) => Container(
          width: width,
          height: height,
          color: Colors.transparent,
        ),
        imageUrl: imagePath,
        width: width,
        height: height,
        fit: fit,
      );
    }
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
