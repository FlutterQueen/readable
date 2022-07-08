import 'package:flutter/material.dart';

extension RContextTheme on BuildContext {
  /// * Theme shortcuts
  /// shortcut for `Theme.of(context)`
  ThemeData get theme => Theme.of(this);

  /// shortcut for `Theme.of(context).textTheme`
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// shortcut for `Theme.of(context).brightness ==  Brightness.dark``
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// shortcut for `Theme.of(context).brightness ==  Brightness.light``
  bool get isLight => Theme.of(this).brightness == Brightness.light;
}
