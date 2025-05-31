import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/ui.const.dart' show height20, height30, width20;
import 'package:club/clubs/view/common.components/club.ads.dart';
import 'package:club/clubs/view/desktop/create.club/component/create.club.left.module.dart';
import 'package:club/clubs/view/common.components/club.banner.dart';
import 'package:club/clubs/view/desktop/create.club/component/create.club.right.module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateClubDesktop extends ConsumerWidget {
  const CreateClubDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Club'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClubBanner(),
            height20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreateClubLeftModuleContent(),
                width20,
                CreateClubRightModuleContent(),
              ],
            ),
            height30,
            CustomButton(onPressed: () => {}, title: 'Create Club'),
            SizedBox(height: 50),
            ClubAds(),
          ],
        ),
      ),
    );
  }
}
