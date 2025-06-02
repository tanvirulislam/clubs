import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart' show emailRegex, height10, height5;
import 'package:club/clubs/view/common.components/create.club/add.club.social.link.dart';
import 'package:club/clubs/view/common.components/create.club/add.club.video.link.dart';
import 'package:club/clubs/view/common.components/create.club/club.established.date.dart';
import 'package:club/clubs/view/common.components/create.club/club.google.map.link.dart';
import 'package:club/clubs/view/common.components/create.club/add.club.logo.dart';
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:club/clubs/view/common.components/create.club/club.color.selction.dart';
import 'package:club/clubs/view/common.components/create.club/country.code.picker.dart';
import 'package:club/clubs/custom.widget/custom.dropdown.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateClubMobileContent extends ConsumerWidget {
  const CreateClubMobileContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClubTitle('Club Name'),
          CustomTextField(
            label: 'Enter Club Name',
            onChanged: (p0) {},
            useController: false,
            useValidator: false,
          ),
          height10,
          ClubTitle('Club Manager'),
          CustomDropDown(
            items: ['Manager 1', 'Manager 2', 'Manager 3'],
            onChanged: (p0) {},
            value: '',
            useSearchableDropdown: true,
            hint: 'Choose Manager',
          ),
          ClubTitle('Club Email'),
          CustomTextField(
            label: 'Enter Club Email',
            onChanged: (p0) {},
            useValidator: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!emailRegex.hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          height10,
          CountryCodeSelector(
            selectedCountryCode: '',
            onCountryChanged: (country) {
              debugPrint('Selected country code: ${country.dialCode}');
              debugPrint('Selected country name: ${country.name}');
            },
            initialSelection: 'BD',
          ),
          ClubTitle('Club Country'),
          CustomDropDown(
            items: [],
            onChanged: (p0) {},
            value: '',
            useSearchableDropdown: true,
            hint: 'Select Club Country',
          ),
          ClubTitle('Club Division'),
          CustomDropDown(
            items: [],
            onChanged: (p0) {},
            value: '',
            useSearchableDropdown: true,
            hint: 'Select Club Division',
          ),
          ClubTitle('Club District'),
          CustomDropDown(
            items: [],
            onChanged: (p0) {},
            value: '',
            useSearchableDropdown: true,
            hint: 'Select Club District',
          ),
          ClubTitle('Club City'),
          CustomDropDown(
            items: [],
            onChanged: (p0) {},
            value: '',
            useSearchableDropdown: true,
            hint: 'Select Club City',
          ),
          ClubTitle('Club Address'),
          CustomTextField(label: 'Enter Address', onChanged: (p0) {}),
          height10,
          ClubTitle('Club Post Code'),
          CustomTextField(label: 'Enter Post Code', onChanged: (p0) {}),
          height10,
          ClubGoogleMapLink(),
          ClubEstablishedDate(),
          height10,
          ClubTitle("Club's Description / BIO"),
          height5,
          CustomTextField(
            label: 'Enter Club\'s Description / BIO',
            onChanged: (p0) {},
            width: context.width,
            maxLine: 4,
          ),
          height10,
          AddClubLogo(),
          height10,
          ClubColorSelection(),
          height10,
          AddClubVideoLink(),
          height10,
          ClubTitle("Club's Website"),
          CustomTextField(label: "Enter Club's Website", onChanged: (p0) {}),
          height10,
          AddClubSocialLink(),
          ClubTitle("Club's URL Name"),
          CustomTextField(label: "Enter Club's URL Name", onChanged: (p0) {}),
          height10,
          Container(
            width: context.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(8),
            child: Text(
              'This URL Name will appear in the spordium.com Platform. If you enter the name of the URL as " My Home Club " or " MyHomeClub ", under the spordium.com domain it will apprear as " spordium.com/MyHomeClub".',
            ),
          ),
        ],
      ),
    );
  }
}
