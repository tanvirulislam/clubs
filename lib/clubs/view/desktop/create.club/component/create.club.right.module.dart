import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart' show height10;
import 'package:club/clubs/view/common.components/add.club.logo.dart';
import 'package:club/clubs/view/common.components/add.club.social.link.dart';
import 'package:club/clubs/view/common.components/add.club.video.link.dart';
import 'package:club/clubs/view/common.components/club.title.dart';
import 'package:club/clubs/view/common.components/clubs.color.selction.dart';
import 'package:club/clubs/view/common.components/common.row.for.club.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateClubRightModuleContent extends ConsumerWidget {
  const CreateClubRightModuleContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClubTitle("Club's Description / BIO"),
            height10,
            CustomTextField(
              label: 'Enter Club\'s Description / BIO',
              onChanged: (p0) {},
              width: context.width,
              maxLine: 4,
            ),
            height10,
            AddClubLogo(),
            height10,
            ClubsColorSelection(),
            AddClubVideoLink(),
            CommonRowForClub(
              "Club's Website",
              CustomTextField(
                label: "Enter Club's Website",
                onChanged: (p0) {},
              ),
            ),
            AddClubSocialLink(),
            CommonRowForClub(
              "Club's URL Name",
              CustomTextField(
                label: "Enter Club's URL Name",
                onChanged: (p0) {},
              ),
            ),
            Container(
              width: context.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Text(
                'This URL Name will appear in the spordium.com Platform. If you enter the name of the URL as " My Home Club " or " MyHomeClub ", under the spordium.com domain it will apprear as " spordium.com/MyHomeClub".',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
