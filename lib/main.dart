import 'package:flutter/material.dart';

import 'package:get/get.dart';

export '_exports_main.dart';
import '_exports_main.dart';

void main() async {
  var initialRoute = Routes.INITIAL;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}
