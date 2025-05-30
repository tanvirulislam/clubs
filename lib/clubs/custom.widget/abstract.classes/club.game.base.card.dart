import 'package:flutter/material.dart';

abstract class ClubGameBaseCard extends StatelessWidget {
  const ClubGameBaseCard({
    super.key,
    this.footerLeadingIcon,
    this.footerLeadingData,
    this.footerTitle,
    this.footerTrailingIcon,
    this.footerTrailingData,
    this.backgroundImage,
    this.imageUrl,
    this.cardTitle,
  });
  final ImageProvider? backgroundImage;
  final IconData? footerLeadingIcon;
  final IconData? footerTrailingIcon;
  final String? footerLeadingData;
  final String? footerTrailingData;
  final String? imageUrl;
  final String? cardTitle;

  ///Appears in the middle
  final Widget? footerTitle;
  BorderRadius get cardBorderRadius => BorderRadius.circular(10);
  final iconSize = 22.0;
  Color get cardColor => Colors.blue.shade50;
  Widget buildCardTitle(BuildContext context) {
    return Container(
      color: cardColor,
      height: 40,
      child: Center(child: Text(cardTitle ?? '')),
    );
  }

  Widget buildCardBody(BuildContext context);

  Widget buildFooterTitle(BuildContext context) => footerTitle ?? SizedBox.shrink();

  Widget buildFooterLeading(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [Icon(footerLeadingIcon, size: iconSize), Text(footerLeadingData ?? '')],
    );
  }

  Widget buildFooterTrailing(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [Text(footerTrailingData ?? ''), Icon(footerTrailingIcon, size: iconSize)],
    );
  }

  Widget buildCardFooter(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: cardBorderRadius,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: cardColor,
        ),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [buildFooterLeading(context), buildFooterTitle(context), buildFooterTrailing(context)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image(
                width: double.maxFinite,
                image: NetworkImage(imageUrl ?? ''),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: buildCardTitle(context),
          ),
          Expanded(
            flex: 4,
            child: buildCardBody(context),
          ),
          Expanded(
            flex: 2,
            child: buildCardFooter(context),
          ),
        ],
      ),
    );
  }
}
