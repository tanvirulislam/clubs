import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FileHolder extends ConsumerWidget {
  const FileHolder({
    super.key,
    required this.child,
    this.onRemove,
    this.borderColor = Colors.green,
  });
  final VoidCallback? onRemove;
  final Widget child;
  final Color borderColor;
  @override
  Widget build(BuildContext context, ref) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.topStart,
        children: [
          SizedBox(height: 300, child: child),
          Positioned(
            top: -3,
            right: -3,
            child: IconButton(
              constraints: const BoxConstraints(maxHeight: 26, maxWidth: 26),
              iconSize: 11,
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.red,
              ),
              onPressed: onRemove,
              icon: const Icon(Icons.close, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
