import 'package:flutter/material.dart';

extension QXNavigator on BuildContext {
  /// * Navigation shortcuts

  /// shortcut for `Navigator.of(context).canPop()`
  bool get canPop => Navigator.canPop(this);
}
