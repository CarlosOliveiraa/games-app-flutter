import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home_module.dart/home_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/', module: HomeModule());
  }
}
