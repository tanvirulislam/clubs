import 'package:club/clubs/context.dart';
import 'package:club/clubs/view/desktop/create.club/create.club.desktop.dart';
import 'package:club/clubs/view/mobile/create.club/create.club.mobile.dart';
import 'package:flutter/material.dart';

class CreateClub extends StatelessWidget {
  const CreateClub({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isMobileWidth ? CreateClubMobile() : CreateClubDesktop();
  }
}
