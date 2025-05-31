import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/helper.method/helper.method.dart';
import 'package:club/clubs/custom.widget/abstract.classes/opponent.base.card.dart';
import 'package:club/clubs/view/common.components/club.ads.dart'
    show clubAdsImage;
import 'package:flutter/material.dart';

class OponentCard extends OpponentBaseCard {
  const OponentCard({
    super.key,
    super.imageUrl,
    super.onPressed,
    super.leftImageUrl,
    super.rightImageUrl,
    super.leftImageTitle,
    super.rightImageTitle,
    super.leftImageDescription,
    super.rightImageDescription,
  });
}

class OpponentCardList extends StatelessWidget {
  const OpponentCardList({super.key});

  @override
  Widget build(BuildContext context) {
    List items = List.generate(3, (index) => 'Item ${index + 1}');

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: List.generate(
            ClubHelperMethod.totalItemCount(items, adInterval: 2),
            (index) {
              return ClubHelperMethod.isAdsPosition(index, adInterval: 2)
                  ? CachedNetworkImage(
                      fit: BoxFit.cover,
                      height: 165,
                      imageUrl:
                          'https://ppc.land/content/images/size/w1200/2024/06/google-ads.webp',
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    )
                  : OponentCard(
                      imageUrl: clubAdsImage,
                      onPressed: () {},
                      leftImageUrl: clubAdsImage,
                      rightImageUrl: clubAdsImage,
                      leftImageTitle: 'Left Image Title',
                      rightImageTitle: 'Right Image Title',
                      leftImageDescription: 'Left Image Description',
                      rightImageDescription: 'Right Image Description',
                    );
            },
          ),
        ),
      ),
    );
  }
}
