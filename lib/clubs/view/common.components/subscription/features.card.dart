import 'package:flutter/material.dart';

class FeaturesCard extends StatelessWidget {
  const FeaturesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Color(0xff3BBA21).withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ...List.generate(7, (index) {
            final featureCardTitles = [
              'Multiple Club Management',
              'Multiple Team Management',
              'Official Player Profile',
              'Accurate Sports Statistics',
              'In-depth Sports Analytics',
              'Talent Scouting',
              'Scheduling & Calendar',
            ];
            return Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/sports.png', height: 40),
                  Text(featureCardTitles[index], textAlign: TextAlign.center),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
