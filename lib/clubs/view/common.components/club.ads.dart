import 'package:cached_network_image/cached_network_image.dart';
import 'package:club/clubs/context.dart';
import 'package:flutter/material.dart';

class ClubAds extends StatelessWidget {
  const ClubAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          height: 200,
          width: context.width,
          fit: BoxFit.fill,
          imageUrl:
              'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          placeholder: (context, url) =>
              Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        Positioned(
          top: 2,
          right: 35,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: Colors.white,
              child: Icon(Icons.play_arrow),
            ),
          ),
        ),
        Positioned(
          top: 2,
          right: 2,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              color: Colors.white,
              child: Icon(Icons.close),
            ),
          ),
        ),
      ],
    );
  }
}
