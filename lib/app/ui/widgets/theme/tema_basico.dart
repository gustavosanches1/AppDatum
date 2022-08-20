import 'dart:ui';

import 'package:flutter/material.dart';

class TemaBasico{

  static const Color corPrimaria   = Color.fromRGBO(39, 163, 220, 1);
  static const Color corSecundaria = Color.fromRGBO(96, 96, 96, 1);
  static const Color corTerciaria = Color.fromRGBO(0, 0, 0, 1);
  static const Color danger_color =  Color.fromRGBO(248, 109, 105, 1);
  static const Color warning_color =  Color.fromRGBO(255, 225, 100, 1);
  static const Color success_color =  Color.fromRGBO(146, 218, 121, 1);
  static const Color secondary_active=  Color.fromRGBO(103, 103, 103, 1);
  static _MouraTemaTextColors corTexto = _MouraTemaTextColors();

  static Map<int, Color> color = {
    50:  Color.fromRGBO(39, 163, 220, .1),
    100: Color.fromRGBO(39, 163, 220, .2),
    200: Color.fromRGBO(39, 163, 220, .3),
    300: Color.fromRGBO(39, 163, 220, .4),
    400: Color.fromRGBO(39, 163, 220, .5),
    500: Color.fromRGBO(39, 163, 220, .6),
    600: Color.fromRGBO(39, 163, 220, .7),
    700: Color.fromRGBO(39, 163, 220, .8),
    800: Color.fromRGBO(39, 163, 220, .9),
    900: Color.fromRGBO(39, 163, 220, 1.0),
  };

  static final ThemeData appThemeData = ThemeData(
    primaryColor: Color.fromRGBO(39, 163, 220, 1),
    primarySwatch: MaterialColor(0, color),
    bottomAppBarColor: corSecundaria,
    fontFamily: 'Roboto',
  );
  static ButtonStyle buttonElevatedStylePrimary({double width = 360, double height = 48 }) {
    return ElevatedButton.styleFrom(
      textStyle: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontFamily: 'Roboto',
          fontSize: 16,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1.5
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(32, 32))),
      minimumSize: Size(width, height),
      primary: TemaBasico.corPrimaria,
    );
  }
  static ButtonStyle buttonElevatedStyleSecondary({double width = 360, double height = 48 }) {
    return ElevatedButton.styleFrom(
      textStyle: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontFamily: 'Roboto',
          fontSize: 16,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1.5
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(32, 32))),
      minimumSize: Size(width, height),
      primary: Color.fromRGBO(255, 255, 255, 1),
      onPrimary: TemaBasico.corPrimaria,
      side: BorderSide(
          width: 1.0,
          color: TemaBasico.corPrimaria
      ),
    );
  }
}

class _MouraTemaTextColors{
  _MouraTemaTextColors();
  Color grayMoura = Color.fromRGBO(96, 96, 96, 1);
}