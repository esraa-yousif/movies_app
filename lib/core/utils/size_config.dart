import 'package:flutter/material.dart';

abstract class SizeConfig {
  static late double screenWidth;

  // Header Movie Poster Size
  static const double headerMoviePosterWithRatio = 0.315;
  static const double headerMoviePosterAspectRatio = 0.65;

  // Normal Movie Poster Size
  static const double normalMoviePosterAspectRatio = 0.75;
  static const double noramlMoviePosterWidthRatio = 0.235;

  // Header Size
  static const double headerAspectRatio = 1.9;
  static const double headerBottomPaddingRatio = 0.33;

  // Movie Item Size
  static const double movieItemWidthRatio = 0.34;
  static const double movieItemAspecttRatio = 1.56;

  // Category Item Size
  static const double categoryItemWidthRatio = 0.39;
  static const double categoryItemAspectRatio = 1.78;

  static double init(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth;
  }

  static Size getMoviePosterSize(bool isHeader) {
    double width, height;
    if (isHeader) {
      width = screenWidth * headerMoviePosterWithRatio;
      height = width / headerMoviePosterAspectRatio;
    } else {
      width = screenWidth * noramlMoviePosterWidthRatio;
      height = width / normalMoviePosterAspectRatio;
    }

    return Size(width, height);
  }

  static Size getHeaderSize() {
    return Size(screenWidth, screenWidth / headerAspectRatio);
  }

  static double getHeaderBottomPadding() {
    return screenWidth / headerAspectRatio * headerBottomPaddingRatio;
  }

  static Size getMovieItemSize() {
    return Size(screenWidth * movieItemWidthRatio,
        (screenWidth * movieItemWidthRatio) / movieItemAspecttRatio);
  }

  static Size getCategoryItemSize() {
    return Size(screenWidth * categoryItemWidthRatio,
        (screenWidth * categoryItemWidthRatio) / categoryItemAspectRatio);
  }
}
