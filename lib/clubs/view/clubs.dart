import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/context.dart';
import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/helper.method/helper.method.dart';
import 'package:club/clubs/module/club.details/view/club.details.dart'
    show ClubDetails;
import 'package:club/clubs/view/club.subscription.dart';
import 'package:club/clubs/view/common.components/club.card.dart';
import 'package:club/clubs/custom.widget/abstract.classes/game.options.tab.bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Clubs extends ConsumerWidget {
  const Clubs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List items = List.generate(11, (index) => 'Item ${index + 1}');
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CliubSubscription()),
              );
            },
            title: 'Create Club',
          ),

          SizedBox(width: 8),
          CustomButton(onPressed: () {}, title: 'My Club'),
          SizedBox(width: 8),
        ],
      ),
      body: GameOptionsTabBar(
        options: ['Cricket', 'Football'],
        children: [
          // ? Cricket tab
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isMobileWidth ? 1 : 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.2,
              ),
              itemCount: ClubHelperMethod.totalItemCount(items),
              itemBuilder: (context, index) {
                return ClubHelperMethod.isAdsPosition(index)
                    ? CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            'https://ppc.land/content/images/size/w1200/2024/06/google-ads.webp',
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )
                    : InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClubDetails(),
                            ),
                          );
                        },
                        child: ClubCard(
                          imageUrl: imageUrl,
                          cardTitle:
                              'Shahid Gazi Rahmatullah Kahn Sriti Gold Team',
                          rank: '#1 In Bangladesh',
                          winRate: '78%',
                          winLoss: '150/50',
                          city: 'Rajshahi',
                          points: '5000',
                          footerLeadingData: 'Teams: 7',
                          footerTrailingData: 'Fan Rating: 3.4',
                        ),
                      );
              },
            ),
          ),
          // ? Football tab
          Text('Football Tab'),
        ],
      ),
    );
  }
}
