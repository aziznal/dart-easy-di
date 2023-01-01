import 'package:get_it/get_it.dart';

import 'package:counter/counter.dart' as counter;
import 'package:counter_storage/counter_storage.dart' as counter_storage;
import 'package:logger/logger.dart' as logger;

void configureDependencies(GetIt instance) {
  counter.configureDependencies(instance);
  counter_storage.configureDependencies(instance);
  logger.configureDependencies(instance);
}
