import '../../../../../_exports_main.dart';

class CatalogModel extends CatalogEntity {
  CatalogModel();
  factory CatalogModel.fromJson(Map<String, dynamic> json) => CatalogModel();
}

extension ListCatalogModelToEntity on List<CatalogModel> {
  List<CatalogEntity> listCatalogToEntity() {
    return map((catalog) => CatalogEntity()).toList();
  }
}
