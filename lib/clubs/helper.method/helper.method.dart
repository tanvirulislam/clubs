class ClubHelperMethod {
  static const int adInterval = 5;
  static int totalItemCount(List items, {int adInterval = adInterval}) {
    // ? Ads after every _adInterval
    int adCount = (items.length / adInterval).floor();
    return items.length + adCount;
  }

  static bool isAdsPosition(int index, {int adInterval = adInterval}) {
    return (index + 1) % (adInterval + 1) == 0;
  }
}
