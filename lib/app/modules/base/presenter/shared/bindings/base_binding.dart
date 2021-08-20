import '../../../../../../_exports_main.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHasuraClient>(
      () => HasuraClient(),
    );
    Get.lazyPut<IGetCatalogsDatasource>(
      () => GetCatalogsDatasourceImpl(Get.find()),
    );
    Get.lazyPut<IGetCatalogsRepository>(
      () => GetCatalogsRepositoryImpl(Get.find()),
    );
    Get.lazyPut<IGetCatalogsUseCase>(
      () => GetCatalogsUseCaseImpl(Get.find()),
    );
    Get.lazyPut<BaseController>(
      () => BaseController(Get.find()),
    );
  }
}
