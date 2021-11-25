import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';
import 'package:slack_app/data/repos/sk_repo_connections_fake.dart';
import 'package:slack_app/domain/repos/sk_repo_connections.dart';

class SKHomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SLDashboardController());
    Get.put<SKRepoConnections>(SKRepoConnectionsFake());
  }
}
