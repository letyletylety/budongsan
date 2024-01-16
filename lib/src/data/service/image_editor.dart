import 'dart:ui';

import '../model/edit_target.dart';

abstract class ImageEditor {
  Future process(Image image, List<EditTarget> targets);
}

class PureDartImageEditor extends ImageEditor {
  @override
  Future process(Image image, List<EditTarget> targets) {
    throw UnimplementedError();
  }
}
