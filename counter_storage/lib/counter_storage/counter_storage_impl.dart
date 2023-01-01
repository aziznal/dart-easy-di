import 'package:counter/counter.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: CounterStorage)
class CounterStorageImpl implements CounterStorage {
  int _currentCounterValue = 0;

  @override
  int get() {
    return _currentCounterValue;
  }

  @override
  void set(int newValue) {
    _currentCounterValue = newValue;
  }
}