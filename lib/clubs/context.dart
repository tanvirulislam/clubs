import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  ThemeData get theme => Theme.of(this);

  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;
  double get shortestSide => mediaQuery.size.shortestSide;
  double get personalInfoTextFieldMinimumWidth => 500;
  double get personalInfoTextFieldSmallMinimumWidth => 245;
  bool get isPhone => shortestSide < 600; //ok
  bool get isTablet => shortestSide >= 600 && shortestSide < 900;
  bool get isDesktopScreen => width >= 1200;
  bool get isTabletScreen => width >= 800 && width < 1200;
  bool get isMobileWidth => width < 500;
  bool get tooSmall => width < 310;
  bool get isWide => width > 1100;

  bool get isSmallTablet => isTablet && shortestSide < 700;
  bool get isLargeTablet => isTablet && shortestSide >= 700;
  bool get isSmallDesktop => isDesktop && shortestSide < 1200;
  bool get isLargeDesktop => isDesktop && shortestSide >= 1200;

  bool get isAndroid => theme.platform == TargetPlatform.android;
  bool get isIOS => theme.platform == TargetPlatform.iOS;
  bool get isWindows => theme.platform == TargetPlatform.windows;
  bool get isLinux => theme.platform == TargetPlatform.linux;
  bool get isMacOS => theme.platform == TargetPlatform.macOS;
  bool get isDesktop => isWindows || isLinux || isMacOS;
  bool get isMobile => isAndroid || isIOS;
}
