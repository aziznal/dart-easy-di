import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './di.config.dart';

GetIt diInstance = GetIt.instance;

@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)  
void configureDependencies() {
  init(diInstance);
}
