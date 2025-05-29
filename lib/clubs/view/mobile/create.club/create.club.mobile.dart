import 'package:club/clubs/ui.const.dart' show height10, height30;
import 'package:club/clubs/view/common.components/club.ads.dart';
import 'package:club/clubs/view/common.components/club.banner.dart';
import 'package:club/clubs/view/mobile/create.club/component/create.club.mobile.content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateClubMobile extends ConsumerWidget {
  const CreateClubMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Club'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClubBanner(),
            height10,
            CreateClubMobileContent(),
            height30,
            ClubAds(),
          ],
        ),
      ),
    );
  }
}
