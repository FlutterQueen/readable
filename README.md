# **`Q U E E N 👑`**

## **`readable`**

<a href="https://pub.dev/packages/readable"><img src="https://img.shields.io/pub/v/readable?style=for-the-badge" alt="Pub"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/FLutterQueen/readable?style=for-the-badge" alt="License: MIT"></a>
<a href="https://img.shields.io/github/issues/FlutterQueen/readable"><img src="https://img.shields.io/github/issues/FlutterQueen/readable?logo=queen&style=for-the-badge" alt="issues"></a>
<a href="https://img.shields.io/github/issues-pr/FlutterQueen/readable"><img src="https://img.shields.io/github/issues-pr/FlutterQueen/readable?style=for-the-badge" alt="Pull requests"></a>
<a href="https://img.shields.io/github/issues/FlutterQueen/readable"><img src="https://img.shields.io/github/forks/FlutterQueen/readable?style=for-the-badge" alt="forks"></a>
<a href="https://img.shields.io/github/issues/FlutterQueen/readable"><img src="https://img.shields.io/github/stars/FlutterQueen/readable?style=for-the-badge" alt="Starts"></a>
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

## [Official Documentation site](https://flutterqueen.github.io/website/)

## What is `readable` 👀

- **collection of helpers and extension methods for dart and flutter**

## Why use `readable` 🤔

### Save time and effort (shortcuts)

- no more helpers or extensions scattered in the project .

```dart
 /// for flutter
 Widget build(BuildContext context){
    /// Before ::
    final width = MediaQuery.of(context).size.width;
    /// After::
    final width = context.width;

    /// Before ::
    final h1 = Theme.of(context).textTheme.headline1;
    /// or
    final h1 = context.h1;
 }
```

```dart
/// for dart
  final data = [1,2,3,4,5];
  final total = data.sum(); // 15
  final minimNumber = data.min(); // 1
  final maximumNumber = data.max(); // 5
  final average = data.average(); // 3
  // ...etc
```

### Readability

- the extensions are built to be easy-to-read and understand .
- it do what it says literally

```dart
  /// BEFORE ::
  final firstUser = users.isEmpty ? null : user.first
  /// AFTER ::
  final firstUser = users.firstOrNull();  /// return the first if the list is not empty else return null

  final dateSTR '10-11-2017';
  /// will convert the string to `DateTime`
  /// is not valid will throw `FormatException`
  final DateTime date = dateStr.toDate();

  /// will convert the string to `DateTime` if the string is not valid will return null
  final DateTime? date = dateStr.toDateOrNull();

  /// if cant convert will return otherDate value
  final DateTime date = dateStr.toDateOr(otherDate);

  /// if cant convert will return now
  final DateTime date = dateStr.toDateOrNow();

  /// ...etc
```

### Stable

mostly the helpers you build in different projects most likely will not test and maintain them here every thing is 100% test covered,

## how to use them

readable is part of queen you already have readable ready out of the box in any file that imports queen

```dart

/// * with queen
import 'package:queen/queen.dar';
/// * with dart only
import 'package:readable/readable.dart';
/// * with flutter
import 'package:flutter_readable/flutter_readable.dart';

```
