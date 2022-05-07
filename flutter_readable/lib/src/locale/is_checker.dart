import 'package:flutter/material.dart';

extension LocaleIsChecker on Locale {
  bool get isArabic => languageCode.toLowerCase() == 'ar';

  bool get isEnglish => languageCode.toLowerCase() == 'en';
}
