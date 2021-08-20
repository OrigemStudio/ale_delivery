import '../../../../../../_exports_main.dart';

class ProductController extends GetxController with StateMixin {
  final IGetProductsUseCase _getProductsUseCase;
  final count = 0.obs;

  ProductController(this._getProductsUseCase);
  @override
  void onInit() async {
    await _getProductsUseCase.call(this);
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
