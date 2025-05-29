import 'package:club/clubs/view/common.components/club.title.dart';
import 'package:flutter/material.dart';

class CommonRowForClub extends StatelessWidget {
  const CommonRowForClub(this.title, this.widget, {super.key});
  final String? title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(flex: 1, child: ClubTitle(title)),
          SizedBox(width: 20),
          Expanded(flex: 3, child: widget ?? SizedBox.shrink()),
        ],
      ),
    );
  }
}
