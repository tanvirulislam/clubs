import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final filePickerProvider =
//     NotifierProviderFamily<PickedFileProvider, PlatformFile?, String?>(
//       PickedFileProvider.new,
//     );

// class PickedFileProvider extends FamilyNotifier<PlatformFile?, String?> {
//   @override
//   PlatformFile? build(arg) => null;

//   Future<PlatformFile?> pickFile({
//     bool? replace = true,
//     List<String>? allowedExtensions,
//   }) async {
//     final res = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowMultiple: false,
//       allowedExtensions: allowedExtensions,
//     );
//     if (res == null || res.files.isEmpty) return null;

//     final pickedFile = res.files.first;
//     if (replace ?? false) {
//       state = pickedFile;
//     } else {
//       state ??= pickedFile;
//     }
//     return state;
//   }

//   void remove() => state = null;
// }

final filePickerProvider =
    NotifierProviderFamily<PickedFileProvider, PlatformFile?, String?>(
      PickedFileProvider.new,
    );

class PickedFileProvider extends FamilyNotifier<PlatformFile?, String?> {
  @override
  PlatformFile? build(arg) => null;

  Future<PlatformFile?> pickFile({
    bool? replace = true,
    List<String>? allowedExtensions,
    int? maxSizeInKB = 500,
  }) async {
    final res = await FilePicker.platform.pickFiles(
      type: allowedExtensions != null ? FileType.custom : FileType.any,
      allowMultiple: false,
      allowedExtensions: allowedExtensions,
    );
    if (res == null || res.files.isEmpty) return null;

    final pickedFile = res.files.first;

    // Validate file size
    if (!_isValidFileSize(pickedFile, maxSizeInKB)) {
      // You can throw an exception or return null based on your preference
      throw Exception(
        'File size must not exceed ${maxSizeInKB}KB. Current size: ${(pickedFile.size / 1024).toStringAsFixed(2)}KB',
      );
    }

    if (replace ?? false) {
      state = pickedFile;
    } else {
      state ??= pickedFile;
    }
    return state;
  }

  bool _isValidFileSize(PlatformFile file, int? maxSizeInKB) {
    if (maxSizeInKB == null) return true;

    final fileSizeInKB = file.size / 1024;
    return fileSizeInKB <= maxSizeInKB;
  }

  void remove() => state = null;
}
