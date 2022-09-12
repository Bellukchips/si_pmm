import 'package:flutter/material.dart';

class ImageAssets {
  static String imgPath = 'assets/img/';
  static String imgAtas = 'round_top';
  static String imgBawah = 'round_bottom';

  static String get(String path) => '$imgPath$path.png';
}

class FontApp {
  static TextStyle primaryStyle =
      const TextStyle(fontFamily: 'Inter', color: Colors.black);
}

