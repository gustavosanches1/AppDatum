import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/app/routes/app_routes.dart';
import 'package:app/app/ui/widgets/theme/tema_basico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();


  runZonedGuarded(() {
    runZoned(() {

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ]);

      runApp(
        OKToast(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            getPages: AppPages.routes,
            defaultTransition: Transition.native,
            transitionDuration: Get.defaultTransitionDuration,
            initialRoute: Routes.INITIAL,
            title: 'Tokio Marine',
            theme: TemaBasico.appThemeData,
            locale: Locale('pt', 'BR'),
          ),
        ),
      );
    });
  }, (error, stackTrace) {
  });
}
