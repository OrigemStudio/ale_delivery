import '../../../../../_exports.dart';

abstract class IGetCatalogsDatasource {
  Future<List<CatalogModel>> call();
}
