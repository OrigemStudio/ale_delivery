import '../../../_exports_main.dart';

class MessagesFailure {
  static String getMessage(Failure failure) {
    return failure is EmptyResponse
        ? 'Não hã nenhum catálogo'
        : 'Erro na requisição';
  }
}
