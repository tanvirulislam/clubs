import 'package:club/clubs/module/club.details/view/common.component/oponent.card.dart';
import 'package:club/clubs/module/club.details/view/common.component/stat.card.dart';
import 'package:flutter/material.dart';
import 'package:club/clubs/context.dart';
import 'package:club/clubs/view/common.components/club.ads.dart' show ClubAds;
import 'package:club/clubs/custom.widget/abstract.classes/detail.base.page.view.dart';
import 'package:club/clubs/custom.widget/abstract.classes/game.options.tab.bar.dart';

class ClubDetailsMobile extends DetailBasePageView {
  const ClubDetailsMobile({
    super.key,
    super.image,
    super.secondaryHeaderChildren,
    super.secondarySubheaderChildren,
    super.tabOptions,
    super.tabBarChildren,
    super.getSelectedOption,
    super.getSelectedIndex,
  });

  @override
  Widget buildHeaderTitleWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Algorithm Generation Club', style: context.titleLarge)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClubAds(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: buildHeader(context),
            ),
            buildSecondaryHeader(context),
            SizedBox(height: 12),
            buildSecondarySubHeader(context),

            // ? custom widget into abstract clasa
            ClubStatSummaryCard(items: items, cardHeight: 165),
            OpponentCardList(),
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
