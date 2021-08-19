import '../../../../../_exports.dart';

abstract class IGetProductsDatasource {
  Future<List<ProductModel>> call();
}
