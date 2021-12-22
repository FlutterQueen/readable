// import 'dart:async';
import 'dart:math';

/// list
extension ReadableListX<T> on List<T> {
//   /// returns the list `length`
//   int count() => length;

//   /// unique values
//   List<T> unique() => toSet().toList();

//   /// async for each
//   Future<void> loop(
//     FutureOr<void> Function(T e) action,
//   ) async {
//     for (final item in this) {
//       await action(item);
//     }
//   }

//   void forEach(
//     void Function(T e) action,
//   ) {
//     for (final item in this) {
//       action(item);
//     }
//   }
  /// return a list without duplicate elements
  List<T> get removeDuplicated => toSet().toList();

  /// return a random element from list
  T get random => this[Random().nextInt(length)];
}
