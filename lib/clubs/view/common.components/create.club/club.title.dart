import 'package:flutter/material.dart';

class ClubTitle extends StatelessWidget {
  const ClubTitle(this.title, {super.key});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(title ?? '', style: TextStyle(fontWeight: FontWeight.w600));
  }
}
