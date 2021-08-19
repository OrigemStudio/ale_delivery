import '../../../../../../_exports.dart';

class BaseController extends GetxController with StateMixin {
  final IGetCatalogsUseCase _getCatalogsUseCase;
  final count = 0.obs;

  BaseController(this._getCatalogsUseCase);
  @override
  void onInit() async {
    await _getCatalogsUseCase.call(this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
