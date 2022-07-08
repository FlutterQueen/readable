import 'package:flutter/material.dart';

/// * MediaQuery shortcuts
extension RContextMediaQuery on BuildContext {
  /// shortcut for `MediaQuery.of(context)`
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// shortcut for `MediaQuery.of(context).size.width`
  double get width => MediaQuery.of(this).size.width;

  /// shortcut for `MediaQuery.of(context).size.height`
  double get height => MediaQuery.of(this).size.height;

  /// shortcut for `MediaQuery.of(this).size.aspectRatio`
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;

  /// shortcut for `MediaQuery.of(context).padding`
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// shortcut for `MediaQuery.of(context).orientation`
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// shortcut for `MediaQuery.of(context).orientation == Orientation.portrait`
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  /// shortcut for `MediaQuery.of(context).orientation == Orientation.landscape`
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  /// shortcut for `MediaQuery.of(context).alwaysUse24HourFormat`
  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;
}
