import 'package:flutter/material.dart';

class StatSummaryCard extends StatelessWidget {
  const StatSummaryCard({super.key, this.items, this.cardHeight, this.cardWidth = 320.0});
  final List<Map<String, dynamic>>? items;
  final double? cardWidth;

  final double? cardHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.shade100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items?.map((item) {
              final title = item['title']?.toString() ?? '';
              final value = item['value'];
              return TournamentOverviewCardEntry(
                title: title,
                value: value,
              );
            }).toList() ??
            [], // Empty list if items is null
      ),
    );
  }
}

class TournamentOverviewCardEntry extends StatelessWidget {
  const TournamentOverviewCardEntry({super.key, this.title, this.value});
  final String? title;
  final double? value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? ''),
        Text('BDT ${value ?? 0.00}'),
      ],
    );
  }
}
