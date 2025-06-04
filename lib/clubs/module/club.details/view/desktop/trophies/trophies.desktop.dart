import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/custom.widget/custom.dialog.box.dart';
import 'package:club/clubs/module/club.details/view/common.component/trophy.list.dart';
import 'package:club/clubs/module/club.details/view/tabs/trophies/add.trophy.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrophiesDesktopTab extends ConsumerWidget {
  const TrophiesDesktopTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClubTitle('2025'),
              TrophyList(),
              height10,
              ClubTitle('2024'),
              TrophyList(),
            ],
          ),
          Spacer(),
          CustomIconButton(
            onPressed: () async {
              customDialog(context, AddTrophy());
            },
            title: 'Add Trophies',
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}
