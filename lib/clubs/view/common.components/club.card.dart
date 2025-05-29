import 'package:club/clubs/view/common.components/club.game.base.card.dart';
import 'package:flutter/material.dart';

// class ClubCard extends ConsumerWidget {
//   const ClubCard(this.index, {super.key});
//   final int index;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return InkWell(
//       onTap: () {},
//       child: Card(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: 110,
//                     width: 110,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: CachedNetworkImage(
//                         height: 80,
//                         width: 80,
//                         fit: BoxFit.cover,
//                         imageUrl: imageUrl,
//                         placeholder:
//                             (context, url) =>
//                                 Center(child: CircularProgressIndicator()),
//                         errorWidget: (context, url, error) => Icon(Icons.error),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Shahid Gazi Rahmatullah Kahn Sriti Gold Team'),
//                       SizedBox(height: 8),
//                       Text(
//                         '#1 In Bangladesh',
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Divider(),
//             _CommonRow(
//               title1: 'Win Rate',
//               title2: 'W/L',
//               title3: 'City',
//               title4: 'Points',
//             ),
//             _CommonRow(
//               isTitle: false,
//               title1: '78%',
//               title2: '150/50',
//               title3: 'Rajshahi',
//               title4: '5000',
//             ),
//             Spacer(),
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//               decoration: BoxDecoration(
//                 color: Color(0xffDAE2EF),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(12),
//                   bottomRight: Radius.circular(12),
//                 ),
//               ),
//               child: Row(
//                 children: [Text('Teams: 7'), Spacer(), Text('Fan Rating: 3.4')],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ClubCard extends ClubGameBaseCard {
  final String teamName;
  final String rank;
  final String winRate;
  final String winLoss;
  final String city;
  final String points;
  final String totalTeams;
  final String fanRating;

  const ClubCard({
    super.key,
    required this.teamName,
    required this.rank,
    required this.winRate,
    required this.winLoss,
    required this.city,
    required this.points,
    required this.totalTeams,
    required this.fanRating,

    super.imageUrl,
  }) : super(
         cardTitle: teamName,
         footerLeadingIcon: Icons.people,
         footerLeadingData: totalTeams,
         footerTrailingIcon: Icons.star,
         footerTrailingData: fanRating,
       );

  @override
  Widget buildCardBody(BuildContext context) {
    return Column(
      children: [
        Divider(),
        _CommonRow(
          title1: 'Win Rate',
          title2: 'W/L',
          title3: 'City',
          title4: 'Points',
        ),
        _CommonRow(
          isTitle: false,
          title1: '78%',
          title2: '150/50',
          title3: 'Rajshahi',
          title4: '5000',
        ),
      ],
    );
  }
}

class _CommonRow extends StatelessWidget {
  const _CommonRow({
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.isTitle = true,
  });
  final String? title1;
  final String? title2;
  final String? title3;
  final String? title4;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title1 ?? '',
            style: isTitle ? TextStyle(fontSize: 12) : null,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            title2 ?? '',
            style: isTitle ? TextStyle(fontSize: 12) : null,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            title3 ?? '',
            style: isTitle ? TextStyle(fontSize: 12) : null,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            title4 ?? '',
            style: isTitle ? TextStyle(fontSize: 12) : null,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

const imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR132TBAD0-GhGhN8_2Xr-3obkFd4NzFbk6Hg&s';
