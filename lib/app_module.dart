import 'package:divideai/app_page.dart';
import 'package:divideai/app_store.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> binds = [
    Bind.factory((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const AppPage(),
    ),
  ];
}
