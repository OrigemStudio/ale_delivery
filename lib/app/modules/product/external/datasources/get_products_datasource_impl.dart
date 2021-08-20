import '../../../../../_exports_main.dart';

class GetProductsDatasourceImpl implements IGetProductsDatasource {
  final IHasuraClient client;

  GetProductsDatasourceImpl(this.client);
  @override
  Future<List<ProductModel>> call() async {
    final result = await client.hasuraConnect.query(ProductQuerys.getProducts);
    var products = result as List;
    if (products.isNotEmpty) {
      return result.map((product) => ProductModel.fromJson(product)).toList();
    } else if (result.isEmpty) {
      throw EmptyResponse();
    } else {
      throw ErrorResponse();
    }
  }
}
