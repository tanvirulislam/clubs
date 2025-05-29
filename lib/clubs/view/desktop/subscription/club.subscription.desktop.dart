import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/context.dart';
import 'package:club/clubs/custom.widget/custom.dialog.box.dart';
import 'package:club/clubs/ui.const.dart'
    show clubImageLink, height10, height20, width10, width5;
import 'package:club/clubs/view/common.components/club.ads.dart';
import 'package:club/clubs/view/common.components/subscription/features.card.dart';
import 'package:club/clubs/view/common.components/subscription/institution.card.dart';
import 'package:club/clubs/view/common.components/subscription/payment.card.dart';
import 'package:club/clubs/view/common.components/subscription/terms.conditions.dart';
import 'package:club/clubs/view/common.components/subscription/club.subscribtion.card.dart';
import 'package:club/clubs/view/create.club.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubSubscriptionDesktop extends ConsumerWidget {
  const ClubSubscriptionDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ? club picture
            Row(
              children: List.generate(4, (index) {
                return Expanded(
                  child: CachedNetworkImage(
                    height: 170,
                    fit: BoxFit.fill,
                    imageUrl: clubImageLink,
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                );
              }),
            ),
            height10,
            Text('Welcome To Spordium Club', style: TextStyle(fontSize: 32)),
            height10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.15),
              child: Column(
                children: [
                  Text(welcomeText, textAlign: TextAlign.center),
                  height10,
                  // ? features card
                  FeaturesCard(),
                ],
              ),
            ),
            height20,
            Text(
              'Manage Your Clubs With Us. Let Spordium do all the Work for you',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            height20,
            // ? package card
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
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
                  ],
                ),
                width10,
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
                width10,
                ClubSubscriptionCard(
                  isFree: true,
                  packagetypeTitle: 'For Inistutions',
                  packageTitle: 'Spordium Custom Club',
                  buttonTitle: 'Contact Us',
                  onPressed: () async =>
                      await customDialog(context, InistitutionCard()),
                  features: features,
                ),
              ],
            ),
            SizedBox(height: 150),
            ClubAds(),
          ],
        ),
      ),
    );
  }
}

const String welcomeText =
    "We're here to support the daily operations and long term growth of your sports clubs. Manage your club in a structured and efficient way, while streamlining activities, engaging with players and maintaining full oversight of club operations. As part of the Spordium Ecosystem, this solution keeps your club organized, performance focused and digitally aligned, with the future of sports management.";
