import 'package:flutter/material.dart';

extension QXTextTheme on BuildContext {
  /// shortcut for `Theme.of(context).textTheme.bodyText1`
  TextStyle? get bodyText1 => Theme.of(this).textTheme.bodyText1;

  /// shortcut for `Theme.of(context).textTheme.bodyText2``
  TextStyle? get bodyText2 => Theme.of(this).textTheme.bodyText2;

  /// shortcut for `Theme.of(context).textTheme.button``
  TextStyle? get button => Theme.of(this).textTheme.button;

  /// shortcut for `Theme.of(context).textTheme.caption``
  TextStyle? get caption => Theme.of(this).textTheme.caption;

  /// shortcut for `Theme.of(context)..textTheme.headline1``
  TextStyle? get headline1 => Theme.of(this).textTheme.headline1;

  /// shortcut for `Theme.of(context).textTheme.headline2``
  TextStyle? get headline2 => Theme.of(this).textTheme.headline2;

  /// shortcut for `Theme.of(context).textTheme.headline3``
  TextStyle? get headline3 => Theme.of(this).textTheme.headline3;

  /// shortcut for `Theme.of(context).textTheme.headline4``
  TextStyle? get headline4 => Theme.of(this).textTheme.headline4;

  /// shortcut for `Theme.of(context).textTheme.headline5``
  TextStyle? get headline5 => Theme.of(this).textTheme.headline5;

  /// shortcut for `Theme.of(context).textTheme.headline6``
  TextStyle? get headline6 => Theme.of(this).textTheme.headline6;

  /// shortcut for `Theme.of(context).textTheme.overline``
  TextStyle? get overline => Theme.of(this).textTheme.overline;

  /// shortcut for `Theme.of(context).textTheme.subtitle1``
  TextStyle? get subtitle1 => Theme.of(this).textTheme.subtitle1;

  /// shortcut for `Theme.of(context).textTheme.subtitle2``
  TextStyle? get subtitle2 => Theme.of(this).textTheme.subtitle2;
}
