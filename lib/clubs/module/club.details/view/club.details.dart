import 'package:club/clubs/context.dart';
import 'package:club/clubs/module/club.details/view/tabs/about.us/about.us.dart';
import 'package:club/clubs/module/club.details/view/tabs/fixture/fixture.dart';
import 'package:club/clubs/module/club.details/view/tabs/teams/teams.dart';
import 'package:club/clubs/module/club.details/view/tabs/trophies/triphies.dart';
import 'package:club/clubs/module/club.details/view/desktop/club.details.desktop.dart';
import 'package:club/clubs/module/club.details/view/mobile/club.details.mobile.dart';
import 'package:flutter/material.dart';
import 'package:club/clubs/view/common.components/club.ads.dart'
    show clubAdsImage;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubDetails extends ConsumerWidget {
  const ClubDetails({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Club Details')),
      body: context.isMobileWidth
          ? ClubDetailsMobile(
              image: clubAdsImage,
              tabOptions: tabOptions,
              tabBarChildren: tabBarChildrenDesktop,
              getSelectedOption: (option) => debugPrint('Selected: $option'),
              getSelectedIndex: (index) => debugPrint('Selected index: $index'),
            )
          : ClubDetailsDesktop(
              image: clubAdsImage,
              tabOptions: tabOptions,
              tabBarChildren: tabBarChildrenDesktop,
              getSelectedOption: (option) => debugPrint('Selected: $option'),
              getSelectedIndex: (index) => debugPrint('Selected index: $index'),
            ),
    );
  }
}

List<String>? tabOptions = [
  'About Us',
  'Trophies',
  'Teams',
  'Fixture',
  'Live Metch',
  'Previous Metch',
  'Club Events',
  'Fecelites',
  'Club Turnaments',
  'Recruitments',
  'Book Field',
  'Posts',
  'Gallery',
];

// List<Widget>? tabBarChildrenMobile = [
//   AboutUs(),
//   Teophies(),
//   TeamsMobile(),
//   Fixture(),
//   Text('Live Metch'),
//   Text('Previous Metch'),
//   Text('Club Events'),
//   Text('Fecelites'),
//   Text('Club turnaments'),
//   Text('Recruitments'),
//   Text('Book field'),
//   Text('Posta'),
//   Text('Gallery'),
// ];

List<Widget>? tabBarChildrenDesktop = [
  AboutUs(),
  Teophies(),
  Teams(),
  Fixture(),
  Text('Live Metch'),
  Text('Previous Metch'),
  Text('Club Events'),
  Text('Fecelites'),
  Text('Club turnaments'),
  Text('Recruitments'),
  Text('Book field'),
  Text('Posta'),
  Text('Gallery'),
];
