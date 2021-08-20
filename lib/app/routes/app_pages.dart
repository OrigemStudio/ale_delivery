import '../../_exports_main.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.INITIAL,
      page: () => BasePage(),
      binding: BaseBinding(),
    ),
  ];
}
