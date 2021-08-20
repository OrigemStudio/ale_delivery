import '../../../../../_exports_main.dart';

class GetCatalogsDatasourceImpl implements IGetCatalogsDatasource {
  final IHasuraClient client;

  GetCatalogsDatasourceImpl(this.client);
  @override
  Future<List<CatalogModel>> call() async {
    final result = await client.hasuraConnect.query(HomeQuerys.getCatalogs);
    var catalogs = result as List;
    if (catalogs.isNotEmpty) {
      return result.map((catalog) => CatalogModel.fromJson(catalog)).toList();
    } else if (result.isEmpty) {
      throw EmptyResponse();
    } else {
      throw ErrorResponse();
    }
  }
}
