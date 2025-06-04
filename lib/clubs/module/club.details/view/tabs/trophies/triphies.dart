import 'package:club/clubs/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../desktop/trophies/trophies.desktop.dart';
import '../../mobile/trophies/trophies.mobile.dart';

class TrophiesTab extends ConsumerWidget {
  const TrophiesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return context.isMobileWidth ? TrophiesMobileTab() : TrophiesDesktopTab();
  }
}
