import 'package:flutter/cupertino.dart';

extension RTextEditingController on TextEditingController {
  bool get isEmpty => text.isEmpty;

  bool get isNotEmpty => text.isNotEmpty;

  int get lenght => text.length;

  void append(String input) {
    text = '$text$input';
  }

  void appendNewLine(String input) {
    text = '$text\n$input';
  }
}
