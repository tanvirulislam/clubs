import 'package:club/clubs/context.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:club/clubs/ui.const.dart' show height10, height5, height20;
import 'package:flutter/material.dart';

class InistitutionCard extends StatelessWidget {
  const InistitutionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'For Institutions',
              style: context.theme.textTheme.titleMedium,
            ),
          ),
          height10,
          Text('Full Name'),
          height5,
          CustomTextField(label: 'Enter Full Name', onChanged: (p0) {}),
          height5,
          Text('Email'),
          height5,
          CustomTextField(label: 'Enter Email', onChanged: (p0) {}),
          height5,
          Text('Messages'),
          height5,
          CustomTextField(
            label: 'Enter Your Meassage',
            onChanged: (p0) {},
            maxLine: 4,
          ),
          height20,
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: Color(0xff060C2F),
                foregroundColor: Colors.white,
              ),
              child: Text('Send Email'),
            ),
          ),
        ],
      ),
    );
  }
}
