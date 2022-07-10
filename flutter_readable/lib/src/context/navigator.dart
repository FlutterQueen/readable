import 'package:flutter/material.dart';

extension RContextNavigator on BuildContext {
  /// * Navigation shortcuts

  /// shortcut for `Navigator.of(context).canPop()`
  bool get canPop => Navigator.canPop(this);

  void pop<T extends Object?>() => Navigator.pop(this);

  NavigatorState get navigator => Navigator.of(this);
  NavigatorState get rootNavigator => Navigator.of(this, rootNavigator: true);
  FocusScopeNode get focusScope => FocusScope.of(this);
  FormState? get form => Form.of(this);
}
