import '../../../_exports.dart';

class MessagesFailure {
  static String getMessage(Failure failure) {
    return failure is EmptyResponse
        ? 'Não hã nenhum catálogo'
        : 'Erro na requisição';
  }
}
