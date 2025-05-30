import 'package:club/clubs/view/abstract.classes/game.options.tab.bar.dart';
import 'package:flutter/material.dart';

abstract class DetailBasePageView extends StatelessWidget {
  const DetailBasePageView({
    super.key,
    this.image,
    this.secondaryHeaderChildren,
    this.secondarySubheaderChildren,
    this.tabOptions,
    this.tabBarChildren,
    this.getSelectedOption,
    this.getSelectedIndex,
  });

  /// Right side cover image of header
  final String? image;
  final List<String>? tabOptions;

  /// Basically a row of widget that appears right below the header
  final List<Widget>? secondaryHeaderChildren;

  /// Optional row of widget that appears below the secondary header
  final List<Widget>? secondarySubheaderChildren;

  /// Options that will show up on tab bar
  final List<Widget>? tabBarChildren;

  /// on tab selected, this will be called
  final Function(String)? getSelectedOption;

  /// on tab selected, this will be called
  final Function(int)? getSelectedIndex;

  double get headerHeight => 220.0;
  double get secondaryHeaderHeight => 180.0;
  double get secondarySubHeaderHeight => 180.0;

  Widget buildHeader(BuildContext context) {
    return SizedBox(
      height: headerHeight,
      child: Row(
        children: [
          Expanded(child: buildHeaderTitleWidget(context)),
          SizedBox(width: 8),
          Expanded(child: buildHeaderImage(context)),
        ],
      ),
    );
  }

  //Appears on left side of cover image
  Widget buildHeaderTitleWidget(BuildContext context);
  Widget buildHeaderImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('$image'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildSecondaryHeader(BuildContext context) {
    if (secondaryHeaderChildren == null) return SizedBox.shrink();
    return SizedBox(
      height: secondaryHeaderHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: secondaryHeaderChildren ?? []),
      ),
    );
  }

  /// Row of widget that appears below the secondary header
  Widget buildSecondarySubHeader(BuildContext context) {
    if (secondarySubheaderChildren == null) return SizedBox.shrink();
    return SizedBox(
      height: secondarySubHeaderHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: secondarySubheaderChildren ?? []),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // AdPlaceholder(adSize: DefaultAdSize.largeLeaderboard),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: buildHeader(context),
            ),
            buildSecondaryHeader(context),
            SizedBox(height: 12),
            buildSecondarySubHeader(context),
            if (tabOptions != null && tabBarChildren != null)
              GameOptionsTabBar(
                options: [...tabOptions ?? []],
                children: tabBarChildren ?? [],
              ),
          ],
        ),
      ),
    );
  }
}
