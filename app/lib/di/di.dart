import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:counter/counter.dart' as counter;
import 'package:counter_storage/counter_storage.dart' as counter_storage;
import 'package:logger/logger.dart' as logger;

import './di.config.dart';

final diInstance = GetIt.instance;

@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)  
void configureDependencies() {
  init(diInstance);
  counter.configureDependencies(diInstance);
  counter_storage.configureDependencies(diInstance);
  logger.configureDependencies(diInstance);
}
