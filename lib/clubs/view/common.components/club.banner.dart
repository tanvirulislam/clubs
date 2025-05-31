import 'package:club/clubs/custom.widget/custom.button.dart';
import 'package:club/clubs/module/file.picker/provider/file.picker.provider.dart';
import 'package:club/clubs/module/file.picker/view/upoaded.file.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubBanner extends ConsumerWidget {
  const ClubBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedFile = ref.watch(filePickersProvider('club_banner'));
    return Column(
      children: [
        UploadedImage(providerTag: 'club_banner'),
        CustomIconButton(
          onPressed: () async {
            try {
              await ref
                  .read(filePickersProvider('club_banner').notifier)
                  .pickFile(allowedExtensions: ['jpg', 'jpeg', 'png']);
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
          title: pickedFile != null ? pickedFile.name : 'Upload Club Banner',
          icon: Icons.upload,
        ),

        height5,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Banner Picture has to be 1920 x 720 pixels \nBanner Picture Maximum Size 500 KB',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
