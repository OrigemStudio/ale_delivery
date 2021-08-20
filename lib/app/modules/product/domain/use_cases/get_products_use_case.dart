// ignore_for_file: invalid_use_of_protected_member
import '../../../../../_exports_main.dart';

abstract class IGetProductsUseCase {
  Future<void> call(ProductController controller);
}

class GetProductsUseCaseImpl implements IGetProductsUseCase {
  final IGetProductsRepository _repository;

  GetProductsUseCaseImpl(this._repository);
  @override
  Future<void> call(ProductController controller) async {
    final result = await _repository.call();
    result.fold((failure) {
      controller.change(null,
          status: RxStatus.error(MessagesFailure.getMessage(failure)));
    }, (success) => controller.change(success, status: RxStatus.error()));
  }
}
