import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBotaoPrimario extends StatelessWidget{
  final Widget child;
  final Function onPressed;
  double width;
  double height;
  AppBotaoPrimario({required this.child, required this.onPressed, required this.width,this.height = 48});
  @override
  Widget build(BuildContext context) {
    this.width = (this.width == null)?MediaQuery.of(context).size.width:this.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle:TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'Roboto',
            fontSize: 16,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1.5
        ),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(32, 32))),
        minimumSize: Size(this.width,this.height),
        primary:  Color.fromRGBO(39, 163, 220, 1),
      ),
      onPressed: () => this.onPressed,
      child: this.child,
    );
  }

}