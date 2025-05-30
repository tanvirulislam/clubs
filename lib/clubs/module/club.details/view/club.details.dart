import 'package:club/clubs/module/club.details/view/desktop/club.details.desktop.dart';
import 'package:flutter/material.dart';
import 'package:club/clubs/view/common.components/club.ads.dart'
    show clubAdsImage;

class ClubDetails extends StatelessWidget {
  const ClubDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Club Details')),
      body: ClubDetailsDesktop(
        image: clubAdsImage,
        tabOptions: tabOptions,
        tabBarChildren: tabBarChildren,
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
  'Club turnaments',
  'Recruitments',
  'Book field',
  'Posta',
  'Gallery',
];

List<Widget>? tabBarChildren = [
  Text('About Us'),
  Text('Trophies'),
  Text('Teams'),
  Text('Fixture'),
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
