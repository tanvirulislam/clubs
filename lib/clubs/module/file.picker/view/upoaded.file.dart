import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/file.picker.provider.dart';
import 'file.holder.dart';

class UploadedImage extends ConsumerWidget {
  const UploadedImage({super.key, required this.providerTag});
  final String? providerTag;

  @override
  Widget build(BuildContext context, ref) {
    final pickedFiles = ref.watch(filePickerProvider(providerTag));
    return (pickedFiles != null)
        ? FileHolder(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.file(File(pickedFiles.path ?? '')),
          ),
          onRemove:
              () => ref.read(filePickerProvider(providerTag).notifier).remove(),
        )
        : const SizedBox.shrink();
  }
}
