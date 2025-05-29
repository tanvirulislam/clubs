import 'package:club/clubs/ui.const.dart' show height10;
import 'package:club/clubs/view/create.club.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Spordium Pro Monthly Subscription',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
          ),
          Text(
            '700 tk',
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(8),
            child: Text('Ads related Text will be shown here'),
          ),
          height10,
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateClub()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: SvgPicture.asset('assets/bKash.svg')),
                Expanded(child: SvgPicture.asset('assets/Nagad.svg')),
                Expanded(
                  flex: 2,
                  child: SvgPicture.asset('assets/ssl.svg', height: 60),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
