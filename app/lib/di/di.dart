import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './di.config.dart';

import 'package:counter/counter.dart' as counter;
import 'package:counter_storage/counter_storage.dart' as counter_storage;
import 'package:package_c/package_c.dart' as package_c;

GetIt diInstance = GetIt.instance;

@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)  
void configureDependencies() {
  print("🛠️  configuring app dependencies...");
  init(diInstance);

  print("🛠️  configuring counter dependencies...");
  counter.configureDependencies(diInstance);

  print("🛠️  configuring counter_storage dependencies...");
  counter_storage.configureDependencies(diInstance);

  print("🛠️  configuring package_c dependencies...");
  package_c.configureDependencies(diInstance);
}
