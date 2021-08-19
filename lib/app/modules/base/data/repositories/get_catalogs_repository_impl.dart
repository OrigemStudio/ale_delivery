import 'package:dartz/dartz.dart';
import '../../../../../_exports.dart';

class GetCatalogsRepositoryImpl implements IGetCatalogsRepository {
  final IGetCatalogsDatasource _datasource;

  GetCatalogsRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<CatalogEntity>>> call() async {
    try {
      final result = await _datasource.call();
      return right(result.listCatalogToEntity());
    } on EmptyResponse catch (e) {
      return left(e);
    } on ErrorResponse catch (e) {
      return left(e);
    }
  }
}
