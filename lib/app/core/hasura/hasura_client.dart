import 'package:hasura_connect/hasura_connect.dart';

abstract class IHasuraClient {
  final HasuraConnect hasuraConnect;

  IHasuraClient({required this.hasuraConnect});
}

class HasuraClient implements IHasuraClient {
  @override
  HasuraConnect get hasuraConnect => HasuraConnect('endPoint');
}
