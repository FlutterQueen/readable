import 'package:flutter/material.dart';

extension QXLocalization on BuildContext {
  /// * Localization shortcuts

  /// shortcut for `Directionality.of(context) == TextDirection.rtl``
  bool get isRtl => Directionality.of(this) == TextDirection.rtl;

  /// shortcut for `Directionality.of(context) == TextDirection.ltr``
  bool get isLtr => Directionality.of(this) == TextDirection.ltr;
}
