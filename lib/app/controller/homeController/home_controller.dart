import 'package:app/app/routes/app_routes.dart';
import 'package:app/app/ui/login/login_page.dart';
import 'package:app/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        SplashScreen(),
         LoginPage(),
        // PadraoPage(rota: Routes.HOME),
      ],
    );
  }
}
