class ClubHelperMethod {
  static int adInterval = 5;
  static int totalItemCount(List items) {
    // ? Ads after every _adInterval
    int adCount = (items.length / adInterval).floor();
    return items.length + adCount;
  }

  static bool isAdsPosition(int index) {
    return (index + 1) % (adInterval + 1) == 0;
  }
}
