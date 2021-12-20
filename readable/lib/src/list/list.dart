// import 'dart:async';
// import 'dart:math';

// extension ReadableListX<T> on List<T> {
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

//   // return random element
//   T get random => this[Random().nextInt(length)];
// }
