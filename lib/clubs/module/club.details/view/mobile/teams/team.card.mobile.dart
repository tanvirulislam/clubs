import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:club/clubs/view/common.components/club.ads.dart';
import 'package:flutter/material.dart';

class TeamCardMobile extends StatelessWidget {
  const TeamCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ? Rank Number
                SizedBox(width: 20, child: Text('#1')),

                // ? Team Logo
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 165,
                    imageUrl: clubAdsImage,
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),

                // ? Team Info Section
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Algorithm Generation Cricket Team',
                              style: context.titleMedium,
                            ),
                          ),
                          width5,
                          Icon(Icons.sports_cricket, size: 14),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildRankingItem('#1 In Bangladesh'),
                          const SizedBox(height: 2),
                          _buildRankingItem('#1 In Division'),
                          const SizedBox(height: 2),
                          _buildRankingItem('#1 In City'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            height10,
            // ? Statistics Section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatColumn('Matches', '300'),
                  _buildStatColumn('Runs', '15024'),
                  _buildStatColumn('Wickets', '150'),
                  _buildStatColumn('Points', '5000'),
                  _buildStatColumn('Team Members Rating', '4.7'),
                  _buildStatColumn('Fan Rating', '3.2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRankingItem(String text) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(text, style: TextStyle(fontSize: 12, color: Colors.pink)),
      ],
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
