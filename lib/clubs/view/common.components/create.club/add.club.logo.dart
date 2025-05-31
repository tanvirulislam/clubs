import 'package:club/clubs/context.dart';
import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/module/file.picker/provider/file.picker.provider.dart';
import 'package:club/clubs/module/file.picker/view/upoaded.file.dart';
import 'package:club/clubs/ui.const.dart' show height5, width10, width5;
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddClubLogo extends ConsumerWidget {
  const AddClubLogo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedFile = ref.watch(filePickersProvider('club_logo'));
    return Column(
      children: [
        Row(
          children: [
            ClubTitle("Club's Logo"),
            width10,
            SizedBox(
              width: 80,
              height: 80,
              child: UploadedImage(providerTag: 'club_logo'),
            ),
            width5,
            Expanded(
              child: CustomIconButton(
                onPressed: () async {
                  try {
                    await ref
                        .read(filePickersProvider('club_logo').notifier)
                        .pickFile(
                          allowedExtensions: ['jpg', 'jpeg', 'png'],
                          maxSizeInKB: 200,
                        );
                  } catch (e) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.toString()),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                title: pickedFile != null
                    ? pickedFile.name
                    : "Upload Club's Logo",
                icon: Icons.upload,
              ),
            ),
            // Expanded(
            //   child: ElevatedButton.icon(
            //     onPressed: () async {

            //     },
            //     label: Text(
            //       pickedFile != null ? pickedFile.name : "Upload Club's Logo",
            //     ),
            //     icon: Icon(Icons.upload),
            //     style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //       backgroundColor: Color(0xff060C2F),
            //       foregroundColor: Colors.white,
            //     ),
            //   ),
            // ),
          ],
        ),
        height5,
        Container(
          width: context.width,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Banner Picture has to be 550 x 550 pixels \nBanner Picture Maximum Size 200 KB',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
