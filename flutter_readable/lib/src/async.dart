import 'package:flutter/widgets.dart';

extension RAsyncSnapshot on AsyncSnapshot {
  bool get hasNoData => !hasData;
  bool get hasNoError => !hasError;
  bool get isLoading => hasNoData && hasNoError;
  bool get isNotLoading => hasData || hasError;
}
