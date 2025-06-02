import 'package:club/clubs/context.dart';
import 'package:club/clubs/provider/providers.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:club/clubs/view/common.components/create.club/club.title.dart';
import 'package:club/clubs/custom.widget/custom.textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubColorSelection extends ConsumerWidget {
  const ClubColorSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorSelectionProvider = ref.watch(clubColorSelectionProvider) ?? [];
    final notifier = ref.read(clubColorSelectionProvider.notifier);

    return context.isMobileWidth
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClubTitle("Club's Colors"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(colorSelectionProvider.length + 1, (
                    index,
                  ) {
                    if (colorSelectionProvider.length == index ||
                        colorSelectionProvider.isEmpty) {
                      return InkWell(
                        onTapDown: (details) async {
                          await notifier.addColor();
                          if (!context.mounted) return;
                          await showColorPickerDialog(
                            context,
                            details.globalPosition,
                            SizedBox(width: 300, child: ClubColor(index)),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      );
                    }
                    final club = colorSelectionProvider[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, bottom: 8),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8, top: 8),
                            height: 40,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    color: Color(
                                      int.parse("0xff${club.colorCode ?? ''}"),
                                    ),
                                  ),
                                  width10,
                                  Text(club.colorName ?? ''),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: -3,
                            child: InkWell(
                              onTap: () {
                                ref
                                    .read(clubColorSelectionProvider.notifier)
                                    .removeColor(index);
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                radius: 12,
                                child: Icon(
                                  Icons.close,
                                  size: 13,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(child: ClubTitle("Club's Colors")),
              width20,
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colorSelectionProvider.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (colorSelectionProvider.length == index ||
                          colorSelectionProvider.isEmpty) {
                        return GestureDetector(
                          onTapDown: (details) async {
                            await notifier.addColor();
                            if (!context.mounted) return;
                            await showColorPickerDialog(
                              context,
                              details.globalPosition,
                              ClubColor(index),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                // margin: EdgeInsets.only(left: 8),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        );
                      }
                      final club = colorSelectionProvider[index];
                      return Stack(
                        alignment: AlignmentDirectional.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 8),
                            height: 40,
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    color: Color(
                                      int.parse("0xff${club.colorCode ?? ''}"),
                                    ),
                                  ),
                                  width10,
                                  Text(club.colorName ?? ''),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 3,
                            child: InkWell(
                              onTap: () {
                                ref
                                    .read(clubColorSelectionProvider.notifier)
                                    .removeColor(index);
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                radius: 12,
                                child: Icon(
                                  Icons.close,
                                  size: 13,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          );
  }
}

class ClubColor extends ConsumerWidget {
  const ClubColor(this.index, {super.key});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorCodeTextController = ref.watch(tecProvider("$index"));
    final notifier = ref.read(clubColorSelectionProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: 'Enter Color Name',
            controller: colorCodeTextController,
            onChanged: (v) => notifier.addColorName(index, v),
          ),
          ColorPicker(
            colorPickerWidth: 170,
            hexInputBar: false,
            key: ValueKey(index),
            pickerColor: Colors.black,
            onColorChanged: (Color color) async {
              await notifier.addColorCode(index, colorCodeTextController.text);
            },
            pickerAreaHeightPercent: 0.7,
            enableAlpha: false,
            displayThumbColor: true,
            paletteType: PaletteType.hsvWithHue,
            labelTypes: const [
              ColorLabelType.rgb,
              ColorLabelType.hsv,
              ColorLabelType.hsl,
            ],
            pickerAreaBorderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            hexInputController: colorCodeTextController,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  ref
                      .read(clubColorSelectionProvider.notifier)
                      .removeColor(index);
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                child: Text('Add'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<String?> showColorPickerDialog(
  BuildContext context,
  Offset position,
  Widget widget,
) async {
  final Size screenSize = MediaQuery.of(context).size;

  double? top;
  double? bottom;

  double calculatedTop = position.dy - (clubPickerHeight / 2);

  // Check for bottom overflow
  if (calculatedTop + clubPickerHeight > screenSize.height) {
    bottom = 10; // Use bottom positioning
  }
  // Check for top overflow
  else if (calculatedTop < 0) {
    top = 10; // Use top positioning
  } else {
    top = calculatedTop; // Use calculated top position
  }

  String? pickedDate = await showDialog(
    barrierDismissible: false,
    animationStyle: AnimationStyle(duration: Duration(milliseconds: 300)),
    context: context,
    builder: (context) {
      return Stack(
        children: [
          Positioned(
            right: 10,
            top: top,
            bottom: bottom,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: widget,
            ),
          ),
        ],
      );
    },
  );
  return pickedDate;
}
