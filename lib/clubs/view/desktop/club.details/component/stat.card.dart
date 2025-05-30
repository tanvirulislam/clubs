import 'package:club/clubs/view/abstract.classes/stat.summary.card.dart';

class ClubStatSummaryCard extends StatSummaryCard {
  const ClubStatSummaryCard({super.key, super.items, super.cardHeight});
}

final List<Map<String, dynamic>> items = [
  {'title': 'Tournament Champion Prize', 'amount': 'BDT 1,00,000'},
  {'title': 'Tournament Runner-Up Prize', 'amount': 'BDT 50,000'},
  {'title': 'Man Of The Tournament', 'amount': 'BDT 25,000'},
  {'title': 'Man Of The Match', 'amount': 'BDT 15,000'},
];
