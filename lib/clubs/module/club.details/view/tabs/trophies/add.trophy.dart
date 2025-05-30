import 'package:club/clubs/context.dart';
import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:club/clubs/module/club.details/view/tabs/trophies/add.trophy.logo.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:flutter/material.dart';

class AddTrophy extends StatelessWidget {
  const AddTrophy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Add Trophies', style: context.titleLarge),
            height10,
            AddTrophieLogo(),
            height10,
            Text('Trophy Name'),
            height5,
            CustomTextField(
              onChanged: (p0) {},
              label: "Enter Trophy Name",
              width: context.width,
            ),
            height5,
            Text('Tournament Name'),
            height5,
            CustomTextField(
              onChanged: (p0) {},
              label: "Enter Tournament Name",
              width: context.width,
            ),
            height5,
            Text('Wining Date'),
            Row(
              children: [
                Text('8th May 2022'),
                width10,
                IconButton(
                  onPressed: () async {},
                  icon: Icon(Icons.calendar_month),
                ),
              ],
            ),
            height10,
            Center(
              child: CustomButton(title: 'Add Trophy', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
