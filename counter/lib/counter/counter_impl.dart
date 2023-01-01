
import './counter_storage.dart';
import './counter.dart';

import 'package:injectable/injectable.dart';

@Injectable(as: Counter)
class CounterImpl implements Counter {
  CounterImpl(this._counterStorage);

  final CounterStorage _counterStorage;

  @override
  void dec() {
    _counterStorage.set(value - 1);
  }

  @override
  void inc() {
    _counterStorage.set(value + 1);
  }

  @override
  int get value => _counterStorage.get();
}
