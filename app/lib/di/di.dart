import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './di.config.dart';

import 'package:package_a/package_a.dart' as package_a;
import 'package:package_b/package_b.dart' as package_b;
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

  print("🛠️  configuring package_a dependencies...");
  package_a.configureDependencies(diInstance);

  print("🛠️  configuring package_b dependencies...");
  package_b.configureDependencies(diInstance);

  print("🛠️  configuring package_c dependencies...");
  package_c.configureDependencies(diInstance);
}
