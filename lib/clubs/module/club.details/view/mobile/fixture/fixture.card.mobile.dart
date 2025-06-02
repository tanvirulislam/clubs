import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:club/clubs/view/common.components/club.ads.dart';
import 'package:flutter/material.dart';

class FixtureCardMobile extends StatelessWidget {
  const FixtureCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // ? Date and Time
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Date: 25 may, 2025'),
                width5,
                Text('Time: 12:30pm'),
              ],
            ),
            height10,
            // ?   Teams vs Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Team 1
                Expanded(
                  child: Column(
                    children: [
                      // Team 1 Logo
                      Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            height: 165,
                            imageUrl: clubAdsImage,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      height5,
                      Text(
                        'Shahid Gazi Rahmatullah Khan Sriti Gold Team',
                        textAlign: TextAlign.center,
                      ),
                      height5,
                      Text(
                        'Group 1 / Team 1',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                // VS Section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('VS', style: context.titleMedium),
                ),

                // Team 2
                Expanded(
                  child: Column(
                    children: [
                      // Team 2 Logo
                      Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            height: 165,
                            imageUrl: clubAdsImage,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      height5,
                      Text(
                        'Shahid Gazi Rahmatullah Khan Sriti Gold Team',
                        textAlign: TextAlign.center,
                      ),
                      height5,
                      Text(
                        'Group 1 / Team 1',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            height10,

            // ? Field Info
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Field Name:'),
                height5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text('Location: Mohammadpur, Iqbal Road, Dhaka'),
                    ),
                    width5,
                    Icon(Icons.location_on, color: Colors.blue, size: 16),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
