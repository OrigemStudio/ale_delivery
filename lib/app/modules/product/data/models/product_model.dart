import '../../../../../_exports_main.dart';

class ProductModel extends ProductEntity {
  ProductModel();
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel();
}

extension ListProductModelToEntity on List<ProductModel> {
  List<ProductEntity> listProductToEntity() {
    return map((Product) => ProductEntity()).toList();
  }
}
