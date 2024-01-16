import 'dart:ui';

import 'package:budongsan/src/data/model/edit_target.dart';

/// the sticker on the image
abstract base class ImageSticker extends EditTarget {
  final Rect rect;

  ImageSticker({required this.rect});
}

/// text
final class TextSticker extends ImageSticker {
  TextSticker({
    required super.rect,
    required this.text,
  });

  final String text;
}
