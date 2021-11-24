import 'package:slack_app/domain/business/connections/sk_connection_type.dart';
import 'package:slack_app/domain/models/sk_connection.dart';

abstract class SKRepoConnections {
  Future<List<SKConnection>> getConnections(SKConnectionType connectionType);
}
