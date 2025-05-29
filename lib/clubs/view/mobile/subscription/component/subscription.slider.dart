import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:club/clubs/ui.const.dart' show clubImageLink;
import 'package:flutter/material.dart';

class SubscriptionSlider extends StatelessWidget {
  const SubscriptionSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CachedNetworkImage(
              height: 200,
              width: double.maxFinite,
              fit: BoxFit.fill,
              imageUrl: i,
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

final List<String> items = List.generate(10, (index) => clubImageLink);
