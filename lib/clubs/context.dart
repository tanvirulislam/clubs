import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  ThemeData get theme => Theme.of(this);

  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;
  double get shortestSide => mediaQuery.size.shortestSide;
  bool get isPhone => shortestSide < 600;
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

  //textStyle
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;

  TextStyle get bosdyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
}
