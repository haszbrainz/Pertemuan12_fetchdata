import 'package:tugas_praktik_1_0/app/http/controllers/costumers_controller.dart';
import 'package:tugas_praktik_1_0/app/http/controllers/auth_controller.dart';
import 'package:tugas_praktik_1_0/app/http/middleware/authenticate.dart';
import 'package:vania/vania.dart';

class ApiRoute implements Route {
  @override
  void register() {
    /// Base Route Prefix
    // Router.basePrefix('api');
    Router.group(() {
      Router.post('register', authController.register);
      Router.post('login', authController.login);
    });
    Router.get('me', authController.me).middleware([AuthenticateMiddleware()]);

    Router.post('create-customer', customerController.create);
    Router.get('/customer', customerController.index);
    Router.put('/customer/{id}', customerController.update);
    Router.delete('/customer/{id}/', customerController.delete);
  }
}
