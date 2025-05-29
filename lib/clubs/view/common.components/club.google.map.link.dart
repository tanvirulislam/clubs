import 'package:club/clubs/ui.const.dart' show width20;
import 'package:club/clubs/view/common.components/club.title.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubGoogleMapLink extends ConsumerWidget {
  const ClubGoogleMapLink({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(flex: 1, child: ClubTitle('Google Map Link')),
          width20,
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'Enter Google Map Link',
                    onChanged: (p0) {},
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.location_pin)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
