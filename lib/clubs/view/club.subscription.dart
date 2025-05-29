import 'package:club/clubs/context.dart';
import 'package:club/clubs/view/desktop/subscription/club.subscription.desktop.dart';
import 'package:club/clubs/view/mobile/subscription/club.subscription.mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CliubSubscription extends ConsumerWidget {
  const CliubSubscription({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return context.isMobileWidth
        ? ClubSubscriptionMobile()
        : ClubSubscriptionDesktop();
  }
}
