import 'package:club/clubs/context.dart';
import 'package:club/clubs/provider/providers.dart';
import 'package:club/clubs/ui.const.dart' show height10, height20, width5;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubSubscriptionCard extends ConsumerWidget {
  const ClubSubscriptionCard({
    super.key,
    this.packageTitle,
    this.packageCost,
    this.isFree = false,
    this.onPressed,
    this.buttonTitle,
    this.isSelected = false,
    this.features,
    this.packagetypeTitle,
  });
  final String? packageTitle;
  final bool isFree;
  final String? packageCost;
  final void Function()? onPressed;
  final String? buttonTitle;
  final bool isSelected;
  final List<String>? features;
  final String? packagetypeTitle;

  @override
  Widget build(BuildContext context, ref) {
    final isSelected = ref.watch(boolProvider(packageTitle));
    return MouseRegion(
      onEnter: (_) => {ref.read(boolProvider(packageTitle).notifier).set(true)},
      onExit: (_) => {ref.read(boolProvider(packageTitle).notifier).set(false)},
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        constraints: BoxConstraints(maxWidth: 280),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ?? false ? Color(0xffDAE2EF) : null,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              packageTitle ?? '',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            height10,
            !isFree
                ? Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '৳',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '700',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'per month',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                : Center(
                    child: Text(
                      packagetypeTitle ?? '',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
            height20,
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                fixedSize: Size(context.width, 35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: Color(0xff060C2F),
                foregroundColor: Colors.white,
              ),
              child: Text(buttonTitle ?? ''),
            ),
            height10,
            Divider(),
            Text('Features:'),
            height10,
            ...List.generate(features?.length ?? 0, (index) {
              final feature = features?[index];
              return Row(
                children: [
                  Icon(Icons.check_circle, size: 13, color: Colors.green),
                  width5,
                  Text(feature ?? ''),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

final List<String> features = List.generate(
  7,
  (index) => 'Feature ${index + 1}',
);
