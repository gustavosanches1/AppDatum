import 'package:app/app/ui/widgets/theme/tema_basico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BasicoAppBar extends StatelessWidget with PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Container(
        // color: Color.fromRGBO(148, 15, 219, 1.0),
        child: Row(
            children:[
              // Expanded(
              //   flex: 8,
                 // child: AppBarDadosUsuario(),
              // ),
              Container(
                width: 36,
                height: 57,
                child: Stack(
                  children: <Widget>[
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 8, top: 16),
                    //   child: Container(
                    //     width: 24,
                    //     height: 24,
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: AssetImage(
                    //             'assets/images/icon_pdvmobile.png'
                    //         )
                    //       )
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ]
        ),
      ),
      actions: [
        Container(
          width: 48,
          height: 50,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 4),
                child: GetBuilder(
                  builder:(controller)=> IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Color.fromRGBO(72, 76, 79, 1),
                      size: 24,
                    ),
                    onPressed: (){
                      // if(controller.contemPagamentosVenda(exibirMensagem: false))
                      //   Get.to(MetodoPagamentoPage());
                      // else
                      //   Get.to(CarrinhoPage(),fullscreenDialog: true);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 8,
                child: new Container(
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: TemaBasico.corPrimaria,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  // child: GetBuilder(
                  //   id:"carrinho",
                  //   builder:(value)=>
                        // Text((value.venda?.value?.itens?.length?.toString()??"0"),
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 10,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        //   textAlign: TextAlign.center,
                        // ),
                  ),
                ),
            ],
          ),
        ),
      ],
      leadingWidth: 42,
      titleSpacing: 0,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);

}