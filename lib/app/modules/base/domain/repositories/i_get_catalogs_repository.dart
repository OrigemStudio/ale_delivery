import 'package:dartz/dartz.dart';
import '../../../../../_exports.dart';

abstract class IGetCatalogsRepository {
  Future<Either<Failure, List<CatalogEntity>>> call();
}
