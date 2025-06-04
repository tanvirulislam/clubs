import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../custom.widget/custom.button.dart';
import '../../../../../custom.widget/custom.dialog.box.dart';
import '../../../../../ui.const.dart' show height10, height20;
import '../../../../../view/common.components/create.club/club.title.dart';
import '../../common.component/trophy.list.dart';
import '../../tabs/trophies/add.trophy.dart';

class TrophiesMobileTab extends ConsumerWidget {
  const TrophiesMobileTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClubTitle('2025'),
          TrophyList(),
          height10,
          ClubTitle('2024'),
          TrophyList(),
          height20,
          Align(
            alignment: Alignment.centerRight,
            child: CustomIconButton(
              onPressed: () async {
                customDialog(context, AddTrophy());
              },
              title: 'Add Trophies',
              icon: Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}
