import 'package:club/clubs/ui.const.dart' show height10;
import 'package:club/clubs/view/mobile/subscription/component/subscription.slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubSubscriptionMobile extends ConsumerWidget {
  const ClubSubscriptionMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ? slider
            SubscriptionSlider(),
            height10,
            Text('Welcome To Spordium Club', style: TextStyle(fontSize: 32)),
            height10,
          ],
        ),
      ),
    );
  }
}
