import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './di.config.dart';

@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)  
void configureDependencies(GetIt instance) => init(instance);  
