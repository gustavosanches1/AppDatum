import 'package:app/app/controller/homeController/home_controller.dart';
import 'package:app/app/routes/app_routes.dart';
import 'package:app/app/ui/login/login_page.dart';
import 'package:get/route_manager.dart';


class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      bindings: [],
    ),
    GetPage(
      name: Routes.LOGIN,
      bindings: [],
      page: () => LoginPage(),
    ),
    // GetPage(
    //   name: Routes.HOME,
    //   page: () => HomePage(),
    //   bindings: [],
    // ),

  ];
}
