import 'package:vania/vania.dart';
import 'package:tugas_praktik_1_0/route/api_route.dart';
import 'package:tugas_praktik_1_0/route/web.dart';
import 'package:tugas_praktik_1_0/route/web_socket.dart';

class RouteServiceProvider extends ServiceProvider {
  @override
  Future<void> boot() async {}

  @override
  Future<void> register() async {
    WebRoute().register();
    ApiRoute().register();
    WebSocketRoute().register();
  }
}
