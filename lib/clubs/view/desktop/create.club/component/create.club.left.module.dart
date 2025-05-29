import 'package:club/clubs/ui.const.dart';
import 'package:club/clubs/view/common.components/club.established.date.dart';
import 'package:club/clubs/view/common.components/club.google.map.link.dart';
import 'package:club/clubs/view/common.components/common.row.for.club.dart';
import 'package:club/clubs/view/common.components/country.code.picker.dart';
import 'package:club/clubs/custom.widget/custom.dropdown.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateClubLeftModuleContent extends ConsumerWidget {
  const CreateClubLeftModuleContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Padding(
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
          ],
        ),
      ),
    );
  }
}
