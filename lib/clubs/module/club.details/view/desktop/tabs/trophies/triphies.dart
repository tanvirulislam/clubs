import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/custom.widget/custom.dialog.box.dart';
import 'package:club/clubs/module/club.details/view/desktop/tabs/trophies/add.trophy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Teophies extends ConsumerWidget {
  const Teophies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
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
