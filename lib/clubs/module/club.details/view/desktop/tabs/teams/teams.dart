import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/module/club.details/view/desktop/tabs/teams/team.card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Teams extends ConsumerWidget {
  const Teams({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int itemLength = 5;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemLength + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == itemLength) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CustomIconButton(
                icon: Icons.add,
                title: 'Add Team',
                onPressed: () {},
              ),
            ),
          );
        }
        return TeamCard();
      },
    );
  }
}
