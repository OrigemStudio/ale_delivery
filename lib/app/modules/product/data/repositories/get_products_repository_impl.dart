import 'package:dartz/dartz.dart';
import '../../../../../_exports.dart';

class GetProductsRepositoryImpl implements IGetProductsRepository {
  final IGetProductsDatasource _datasource;

  GetProductsRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<ProductEntity>>> call() async {
    try {
      final result = await _datasource.call();
      return right(result.listProductToEntity());
    } on EmptyResponse catch (e) {
      return left(e);
    } on ErrorResponse catch (e) {
      return left(e);
    }
  }
}
