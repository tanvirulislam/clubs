import 'package:club/clubs/ui.const.dart';
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddClubSocialLink extends ConsumerWidget {
  const AddClubSocialLink({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(child: ClubTitle("Club's Social Link")),
          width20,
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'Enter Club\'s Social Media Link',
                    onChanged: (p0) {},
                  ),
                ),
                width10,
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
