import '../../../../../_exports_main.dart';

abstract class IGetProductsDatasource {
  Future<List<ProductModel>> call();
}
