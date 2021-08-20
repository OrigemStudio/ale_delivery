import '../../../../../_exports_main.dart';

abstract class IGetCatalogsDatasource {
  Future<List<CatalogModel>> call();
}
