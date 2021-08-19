import 'package:flutter/material.dart';

import 'package:get/get.dart';

export '_exports.dart';
import '_exports.dart';

void main() async {
  var initialRoute = Routes.HOME;
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
