import 'package:injectable/injectable.dart';

import '../utils/globals.dart';
import 'injectable_init.config.dart';

@InjectableInit()
void configureDependencies() {
  $initGetIt(getIt);
}
