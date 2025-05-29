import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart' show emailRegex, height10, height5;
import 'package:club/clubs/view/common.components/create.club/add.club.social.link.dart';
import 'package:club/clubs/view/common.components/create.club/add.club.video.link.dart';
import 'package:club/clubs/view/common.components/create.club/club.established.date.dart';
import 'package:club/clubs/view/common.components/create.club/club.google.map.link.dart';
import 'package:club/clubs/view/common.components/create.club/add.club.logo.dart';
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:club/clubs/view/common.components/create.club/clubs.color.selction.dart';
import 'package:club/clubs/view/common.components/create.club/common.row.for.club.dart';
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
        children: [
          CommonRowForClub(
            'Club Name',
            CustomTextField(
              label: 'Enter Club Name',
              onChanged: (p0) {},
              useController: false,
              useValidator: false,
            ),
          ),
          CommonRowForClub(
            'Club Manager',
            CustomDropDown(
              items: ['Manager 1', 'Manager 2', 'Manager 3'],
              onChanged: (p0) {},
              value: '',
              useSearchableDropdown: true,
              hint: 'Choose Manager',
            ),
          ),
          CommonRowForClub(
            'Club eMail',
            CustomTextField(
              label: 'Enter Club eMail',
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
          ),
          CountryCodeSelector(
            selectedCountryCode: '',
            onCountryChanged: (country) {
              debugPrint('Selected country code: ${country.dialCode}');
              debugPrint('Selected country name: ${country.name}');
            },
            initialSelection: 'BD',
          ),
          CommonRowForClub(
            'Club Country',
            CustomDropDown(
              items: [],
              onChanged: (p0) {},
              value: '',
              useSearchableDropdown: true,
              hint: 'Select Club Country',
            ),
          ),
          CommonRowForClub(
            'Club Division',
            CustomDropDown(
              items: [],
              onChanged: (p0) {},
              value: '',
              useSearchableDropdown: true,
              hint: 'Select Club Division',
            ),
          ),
          CommonRowForClub(
            'Club District',
            CustomDropDown(
              items: [],
              onChanged: (p0) {},
              value: '',
              useSearchableDropdown: true,
              hint: 'Select Club District',
            ),
          ),
          CommonRowForClub(
            'Club City',
            CustomDropDown(
              items: [],
              onChanged: (p0) {},
              value: '',
              useSearchableDropdown: true,
              hint: 'Select Club City',
            ),
          ),
          CommonRowForClub(
            'Club Address',
            CustomTextField(label: 'Enter Address', onChanged: (p0) {}),
          ),
          CommonRowForClub(
            'Club Post Code',
            CustomTextField(label: 'Enter Post Code', onChanged: (p0) {}),
          ),
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
          ClubsColorSelection(),
          AddClubVideoLink(),
          CommonRowForClub(
            "Club's Website",
            CustomTextField(label: "Enter Club's Website", onChanged: (p0) {}),
          ),
          AddClubSocialLink(),
          CommonRowForClub(
            "Club's URL Name",
            CustomTextField(label: "Enter Club's URL Name", onChanged: (p0) {}),
          ),
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
