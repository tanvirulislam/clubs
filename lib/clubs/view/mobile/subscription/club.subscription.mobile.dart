import 'package:club/clubs/custom.widget/custom.dialog.box.dart';
import 'package:club/clubs/ui.const.dart' show height10, height20, width5;
import 'package:club/clubs/view/common.components/club.ads.dart';
import 'package:club/clubs/view/common.components/subscription/club.subscribtion.card.dart';
import 'package:club/clubs/view/common.components/subscription/features.card.dart';
import 'package:club/clubs/view/common.components/subscription/institution.card.dart';
import 'package:club/clubs/view/common.components/subscription/payment.card.dart';
import 'package:club/clubs/view/common.components/subscription/terms.conditions.dart';
import 'package:club/clubs/view/create.club.dart';
import 'package:club/clubs/view/desktop/subscription/club.subscription.desktop.dart'
    show welcomeText;
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
            Text('Welcome To Spordium Club', style: TextStyle(fontSize: 20)),
            height10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(welcomeText, textAlign: TextAlign.center),
            ),
            height10,
            FeaturesCard(),
            height20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Manage Your Clubs With Us. Let Spordium do all the Work for you',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            height20,
            ClubSubscriptionCard(
              packageTitle: 'Spordium Go',
              packagetypeTitle: 'Free',
              isFree: true,
              buttonTitle: 'Select Paln',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateClub()),
                );
              },
              features: features,
            ),
            height10,
            ClubSubscriptionCard(
              packageTitle: 'Spordium Pro',
              isFree: false,
              buttonTitle: 'Select Paln',
              onPressed: () async {
                await customDialog(context, PaymentCard());
              },
              isSelected: true,
              features: features,
            ),
            height10,
            ClubSubscriptionCard(
              isFree: true,
              packagetypeTitle: 'For Inistutions',
              packageTitle: 'Spordium Custom Club',
              buttonTitle: 'Contact Us',
              onPressed: () async =>
                  await customDialog(context, InistitutionCard()),
              features: features,
            ),
            height10,
            // ? terms and conditions
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                width5,
                Text('I Aggree All The'),
                width5,
                InkWell(
                  onTap: () async {
                    await customDialog(
                      context,
                      SubscriptionTermsAndConditions(),
                    );
                  },
                  child: Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            height10,
            ClubAds(),
            height20,
          ],
        ),
      ),
    );
  }
}
