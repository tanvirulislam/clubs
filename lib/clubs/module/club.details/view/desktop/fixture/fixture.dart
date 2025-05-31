import 'package:club/clubs/module/club.details/view/desktop/fixture/fixture.card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Fixture extends ConsumerWidget {
  const Fixture({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return FixtureCard();
      },
    );
  }
}
