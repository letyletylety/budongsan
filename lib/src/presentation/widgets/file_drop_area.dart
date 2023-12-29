import 'dart:async';

import 'package:flutter/material.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';

class FileDropArea extends StatelessWidget {
  const FileDropArea({super.key});

  Future<void> onPerformDrop(PerformDropEvent event) {
    throw UnimplementedError();
  }

  FutureOr<DropOperation> onDropOver(DropOverEvent event) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return _FileDropArea(
      onPerformDrop: onPerformDrop,
      onDropOver: onDropOver,
      formats: Formats.standardFormats,
    );
  }
}

class _FileDropArea extends StatelessWidget {
  const _FileDropArea({
    required this.onPerformDrop,
    required this.onDropOver,
    required this.formats,
  });

  final Future<void> Function(PerformDropEvent dropEvent) onPerformDrop;
  // (PerformDropEvent dropEvent) {};

  final FutureOr<DropOperation> Function(DropOverEvent event) onDropOver;
  // (event) {};
  final List<DataFormat> formats;

  @override
  Widget build(BuildContext context) {
    return DropRegion(
      formats: formats,
      onDropOver: onDropOver,
      onPerformDrop: onPerformDrop,
      child: const Text('여기에 파일을 드래그 하세요'),
    );
  }
}
