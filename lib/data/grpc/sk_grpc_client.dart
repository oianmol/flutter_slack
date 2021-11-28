import 'package:grpc/grpc.dart';

class SKGrpcClient {
  late ClientChannel _clientChannel;
  static final SKGrpcClient _singleton = SKGrpcClient._internal();

  factory SKGrpcClient() {
    return _singleton;
  }

  SKGrpcClient._internal() {
    createClientChannel();
  }

  void createClientChannel() async {
    _clientChannel = ClientChannel(
      "192.168.1.11",
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        idleTimeout: Duration(seconds: 10),
      ),
    );
  }

  ClientChannel grpcClientChannel() {
    return _clientChannel;
  }
}
