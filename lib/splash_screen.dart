import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/app/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToLogin();
      }
      else {
        _navigateToHome();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    return true;
  }

  void _navigateToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void _navigateToHome() {
    Get.offAllNamed(Routes.HOME);
  }
  // void _navigateToConfig() {
  //   Get.offAllNamed(Routes.CONFIGURACAO);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 160.0,
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * .4,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 260.0,
            //   ),
            //   child: Center(
            //     child: Image.asset(
            //       'assets/images/preloader.gif',
            //       width: MediaQuery.of(context).size.width * .2,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
