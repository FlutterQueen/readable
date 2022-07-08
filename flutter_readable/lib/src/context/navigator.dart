import 'package:flutter/material.dart';

extension RContextNavigator on BuildContext {
  /// * Navigation shortcuts

  /// shortcut for `Navigator.of(context).canPop()`
  bool get canPop => Navigator.canPop(this);

  void pop<T extends Object?>() => Navigator.pop(this);
}
