import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  /// --Sizes for each screen
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width > 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    /// DESKTOP SCREEN
    if (_size.width >= 1100) {
      return desktop;
    }

    //Todo no 1: Error because of tablet
    /// TABLET SCREEN
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }

    /// MOBILE SCREEN
    else {
      return mobile;
    }
  }
}
