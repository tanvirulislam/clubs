import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          height10,
          Text("Club's Description / BIO", style: context.titleLarge),
          height10,
          Text(
            "Lorem ipsum dolor sit amet consectetur. Etiam habitant gravida id amet. Vulputate massa erat eleifend pharetra accumsan nulla. Sed nisi tellus nunc nec lectus dui augue varius eget. Leo posuere massa in tristique ipsum quam netus vitae. Nibh dis massa sapien sodales sit lacus ac convallis. Faucibus laoreet eu accumsan quis lacus et nisi. Penatibus scelerisque eleifend semper vel a. Urna lorem urna eu elit. Tortor orci dignissim id faucibus purus consequat.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
