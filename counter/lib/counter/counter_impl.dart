import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import './counter_storage.dart';
import './counter.dart';

@Injectable(as: Counter)
class CounterImpl implements Counter {
  CounterImpl(this._counterStorage, this._logger);

  final CounterStorage _counterStorage;
  final Logger _logger;

  @override
  void dec() {
    _logger.info('decrementing counter');
    _counterStorage.set(value - 1);
  }

  @override
  void inc() {
    _logger.info('incrementing counter');
    _counterStorage.set(value + 1);
  }

  @override
  int get value => _counterStorage.get();
}
