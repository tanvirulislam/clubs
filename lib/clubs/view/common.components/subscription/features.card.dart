import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart' show height10;
import 'package:flutter/material.dart';

class FeaturesCard extends StatelessWidget {
  const FeaturesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final featureCardTitles = [
      'Multiple Club Management',
      'Multiple Team Management',
      'Official Player Profile',
      'Accurate Sports Statistics',
      'In-depth Sports Analytics',
      'Talent Scouting',
      'Scheduling & Calendar',
    ];
    return !context.isMobileWidth
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xff3BBA21).withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                ...List.generate(7, (index) {
                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/sports.png', height: 40),
                        Text(
                          featureCardTitles[index],
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          )
        : Column(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                ),
                itemCount: featureCardTitles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xff3BBA21).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/sports.png', height: 40),
                        Text(
                          featureCardTitles[index],
                          textAlign: TextAlign.center,
                        ),
                        height10,
                      ],
                    ),
                  );
                },
              ),
            ],
          );
  }
}
