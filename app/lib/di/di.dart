import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:di/di.dart' as di;

import './di.config.dart';

final diInstance = GetIt.instance;

@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)  
void configureDependencies() {
  init(diInstance);
  di.configureDependencies(diInstance);
}
