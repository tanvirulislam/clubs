import 'package:flutter/material.dart';

class TrophyList extends StatelessWidget {
  const TrophyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(2, (index) {
          return Container(
            margin: EdgeInsets.only(right: 8),
            width: 120,
            child: Column(
              children: [
                Image.asset('assets/trophy.png', fit: BoxFit.fitHeight),
                Text(
                  "UEFA Champions League Champion",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
