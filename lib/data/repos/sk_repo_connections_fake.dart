import 'package:slack_app/domain/business/connections/sk_connection_type.dart';
import 'package:slack_app/domain/models/sk_connection.dart';
import 'package:slack_app/domain/repos/sk_repo_connections.dart';

class SKRepoConnectionsFake extends SKRepoConnections {
  @override
  Future<List<SKConnection>> getConnections(SKConnectionType connectionType) {
    return Future.delayed(const Duration(seconds: 2)).then((value) => [
          SKConnection(title: "flutter_hyd", isPrivate: true, isChannel: true),
          SKConnection(
              title: "android_india", isPrivate: true, isChannel: true),
          SKConnection(title: "Carl Jung", isPrivate: true, isChannel: false),
          SKConnection(title: "Anmol Verma", isPrivate: true, isChannel: false),
          SKConnection(title: "Someone XYZ", isPrivate: true, isChannel: false)
        ]);
  }
}
