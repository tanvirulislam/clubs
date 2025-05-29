import 'package:flutter/material.dart';

Future<void> customDialog(
  BuildContext context,
  Widget child, {
  bool barrierDismissible = true,
}) async {
  await showDialog<void>(
    barrierDismissible: barrierDismissible,
    animationStyle: AnimationStyle(duration: Duration(milliseconds: 300)),
    context: context,
    builder:
        (context) => AlertDialog(
          contentPadding: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
          content: child,
        ),
  );
}
