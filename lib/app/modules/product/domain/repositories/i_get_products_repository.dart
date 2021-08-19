import 'package:dartz/dartz.dart';
import '../../../../../_exports.dart';

abstract class IGetProductsRepository {
  Future<Either<Failure, List<ProductEntity>>> call();
}
