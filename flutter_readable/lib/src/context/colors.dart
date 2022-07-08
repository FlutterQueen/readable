import 'package:flutter/material.dart';

extension RContextColors on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  Color get backgroundColor => Theme.of(this).backgroundColor;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get bottomAppBarColor => Theme.of(this).bottomAppBarColor;
  Color get cardColor => Theme.of(this).cardColor;
  Color get dividerColor => Theme.of(this).dividerColor;
  Color get disabledColor => Theme.of(this).disabledColor;
  Color get focusColor => Theme.of(this).focusColor;
  Color get hoverColor => Theme.of(this).hoverColor;
  Color get highlightColor => Theme.of(this).highlightColor;
  Color get splashColor => Theme.of(this).splashColor;
  Color get selectedRowColor => Theme.of(this).selectedRowColor;
  Color get unselectedWidgetColor => Theme.of(this).unselectedWidgetColor;
  Color get secondaryHeaderColor => Theme.of(this).secondaryHeaderColor;
  Color get toggleableActiveColor => Theme.of(this).toggleableActiveColor;

  Color get hintColor => Theme.of(this).hintColor;
  Color get errorColor => Theme.of(this).errorColor;
  ColorScheme? get colorScheme => Theme.of(this).colorScheme;

  Color? get buttonPrimaryColor =>
      Theme.of(this).buttonTheme.colorScheme?.primary;
}
