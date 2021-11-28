import 'package:get/get.dart';
import 'package:slack_app/data/grpc/sk_grpc_client.dart';
import 'package:slack_app/src/generated/protos/me/slack/slackbase.pbgrpc.dart';

class SKGlobalBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SKGrpcClient());
    final SlackServiceClient serviceClient =
    SlackServiceClient(Get.find<SKGrpcClient>().grpcClientChannel());
    Get.put(serviceClient);
  }
}
