import 'package:club/clubs/ui.const.dart' show width20;
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:club/clubs/custom.widget/custom.date.picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubEstablishedDate extends ConsumerWidget {
  const ClubEstablishedDate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime now = DateTime.now();
    return Row(
      children: [
        Expanded(flex: 1, child: ClubTitle('Club Established Date')),
        width20,
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(child: Text('${now.day}/${now.month}/${now.year}')),
                InkWell(
                  onTapDown: (details) {
                    showCustomDatePickerForHistory(
                      DateTime.now(),
                      context,
                      details.globalPosition,
                    );
                  },
                  child: Icon(Icons.calendar_month),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
