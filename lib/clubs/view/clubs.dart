import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/context.dart';
import 'package:club/clubs/helper.method/helper.method.dart';
import 'package:club/clubs/view/club.subscription.dart';
import 'package:club/clubs/view/common.components/club.card.dart';
import 'package:club/clubs/view/common.components/game.options.tab.bar.dart';
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
          ElevatedButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CliubSubscription()),
              );
            },
            child: Text('Create Club'),
          ),
          SizedBox(width: 8),
          ElevatedButton(onPressed: () {}, child: Text('My Club')),
          SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: GameOptionsTabBar(
          options: ['Cricket', 'Football'],
          children: [
            GridView.builder(
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
                    : ClubCard(
                        imageUrl: imageUrl,
                        teamName:
                            'Shahid Gazi Rahmatullah Kahn Sriti Gold Team',
                        rank: '#1 In Bangladesh',
                        winRate: '78%',
                        winLoss: '150/50',
                        city: 'Rajshahi',
                        points: '5000',
                        totalTeams: 'Teams: 7',
                        fanRating: 'Fan Rating: 3.4',
                      );
              },
            ),
            Text(''),
          ],
        ),
      ),
    );
  }
}
