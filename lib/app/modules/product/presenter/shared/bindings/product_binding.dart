import '../../../../../../_exports_main.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHasuraClient>(
      () => HasuraClient(),
    );
    Get.lazyPut<IGetProductsDatasource>(
      () => GetProductsDatasourceImpl(Get.find()),
    );
    Get.lazyPut<IGetProductsRepository>(
      () => GetProductsRepositoryImpl(Get.find()),
    );
    Get.lazyPut<IGetProductsUseCase>(
      () => GetProductsUseCaseImpl(Get.find()),
    );
    Get.lazyPut<ProductController>(
      () => ProductController(Get.find()),
    );
  }
}
