import 'package:dartz/dartz.dart';
import '../../../../../_exports_main.dart';

abstract class IGetCatalogsRepository {
  Future<Either<Failure, List<CatalogEntity>>> call();
}
