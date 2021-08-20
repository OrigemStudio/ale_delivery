// ignore_for_file: invalid_use_of_protected_member
import '../../../../../_exports_main.dart';

abstract class IGetCatalogsUseCase {
  Future<void> call(BaseController controller);
}

class GetCatalogsUseCaseImpl implements IGetCatalogsUseCase {
  final IGetCatalogsRepository _repository;

  GetCatalogsUseCaseImpl(this._repository);
  @override
  Future<void> call(BaseController controller) async {
    final result = await _repository.call();
    result.fold((failure) {
      controller.change(null,
          status: RxStatus.error(MessagesFailure.getMessage(failure)));
    }, (success) => controller.change(success, status: RxStatus.success()));
  }
}
