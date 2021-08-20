import 'package:dartz/dartz.dart';
import '../../../../../_exports_main.dart';

abstract class IGetProductsRepository {
  Future<Either<Failure, List<ProductEntity>>> call();
}
