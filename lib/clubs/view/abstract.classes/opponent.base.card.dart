import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class OpponentBaseCard extends StatelessWidget {
  const OpponentBaseCard({
    super.key,
    this.imageUrl,
    this.onPressed,
    this.leftImageUrl,
    this.rightImageUrl,
    this.leftImageTitle,
    this.rightImageTitle,
    this.leftImageDescription,
    this.rightImageDescription,
  });

  final VoidCallback? onPressed;
  final String? imageUrl,
      leftImageUrl,
      rightImageUrl,
      leftImageTitle,
      rightImageTitle,
      leftImageDescription,
      rightImageDescription;

  ///Appears in the middle
  BorderRadius get cardBorderRadius => BorderRadius.circular(10);
  final iconSize = 22.0;
  Color get cardColor => Colors.blue.shade50;

  Widget buildCardHeader(BuildContext context) => SizedBox.shrink();

  Widget buildCardCenterWidget(BuildContext context) => SizedBox.shrink();

  Widget buildFooterDivider(BuildContext context) => SizedBox.shrink();

  Widget buildFooter(BuildContext context) => SizedBox.shrink();

  Widget buildLeftImageHelperText(BuildContext context) => SizedBox.shrink();

  Widget buildRightImageHelperText(BuildContext context) => SizedBox.shrink();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onPressed,
      child: SizedBox(
        width: 360,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                buildCardHeader(context),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: BorderedImage(imageUrl: leftImageUrl)),
                    buildLeftImageHelperText(context),
                    // Spacer(),
                    buildCardCenterWidget(context),
                    // Spacer(),
                    buildRightImageHelperText(context),
                    Flexible(child: BorderedImage(imageUrl: rightImageUrl)),
                  ],
                ),
                SizedBox(
                  height: 60, //!important for adjusting team names
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (leftImageTitle != null)
                              Text(
                                leftImageTitle ?? '',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            Text(
                              rightImageDescription ?? '',
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if (rightImageTitle != null)
                              Text(
                                rightImageTitle ?? '',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            Text(
                              rightImageDescription ?? '',
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                buildFooterDivider(context),
                buildFooter(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BorderedImage extends ConsumerWidget {
  const BorderedImage({super.key, this.imageUrl});
  final String? imageUrl;
  final imageSize = 80.0;

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      height: imageSize,
      width: imageSize,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.black12, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: imageUrl != null
                  ? NetworkImage('$imageUrl$imageUrl')
                  : AssetImage('assets/ag_logo.png') as ImageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
