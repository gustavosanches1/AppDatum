import 'package:app/app/ui/widgets/theme/tema_basico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerMenu extends GetView {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 130.0,
                              width: 130.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/logoMoura.png'),
                                  )),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              //  Text("PDV: ${controller.configuracaoPdv.empresa.pdv.codigo.toString()} |"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.library_books,color: TemaBasico.corPrimaria,),
                title: Text("Comanda"),
                onTap: () {
                  // Get.to(ComandaPage());
                  debugPrint('toquei no drawer1');
                }),
            ListTile(
                leading: Icon(Icons.point_of_sale,color: TemaBasico.corPrimaria,),
                title: Text("Caixa"),
                subtitle: (){
                  int ultimoCaixa = (controller.configuracaoPdv?.ultimoCaixa ?? 0);
                  if(ultimoCaixa!=0){
                    return Text("Abertura Nº: ${ultimoCaixa.toString().padLeft(2,"0")}");
                  }
                  return null;
                }(),
                onTap: () {
                  // Get.to(CaixaPage());
                  debugPrint('toquei no drawer2');
                }),
            ListTile(
                leading: Icon(Icons.person_add,color: TemaBasico.corPrimaria,),
                title: Text("Informar cliente"),
                onTap: () {
                  // Get.to(ClientePage());
                  debugPrint('toquei no drawer3');
                }),
            ListTile(
                leading: Icon(Icons.search,color: TemaBasico.corPrimaria,),
                title: Text("Busca de produtos"),
                onTap: () {
                  // Get.to(ConsultaPage());
                  debugPrint('toquei no drawer4');
                }),
            ListTile(
                leading: Icon(Icons.published_with_changes,color: TemaBasico.corPrimaria,),
                title: Text("Devoluções"),
                onTap: () {
                  // Get.to(Devolucao());
                  debugPrint('toquei no drawer5');
                }),
            ListTile(
                leading: Icon(Icons.home,color: TemaBasico.corPrimaria,),
                title: Text("Home"),
                onTap: () {
                  // Get.offAllNamed(Routes.HOME);
                  debugPrint('toquei no drawer7');
                }),
            ListTile(
                leading: Icon(Icons.refresh,color: TemaBasico.corPrimaria,),
                title: Text("Atualizar Carga"),
                onTap: () async {
                  // try {
                  //   await controller.atualizarBanco(DialogDownload(context),
                  //       forcar: true);
                  // } catch (e) {
                  //   gravarLogErro(e, Trace.current(), exibirMensagem: true);
                  // }
                }),
            ListTile(
                leading: Icon(Icons.settings,color: TemaBasico.corPrimaria,),
                title: Text("Configurações"),
                onTap: () {
                  // Get.to(ConfiguracaoPage());
                  debugPrint('toquei no drawer9');
                }),
            ListTile(
                leading: Icon(Icons.logout,),
                title: Text("Sair", style: TextStyle(fontWeight: FontWeight.bold,),),
                onTap: () async {
                  // _usuarioController.limparUsuario();
                  // await Get.offAndToNamed(Routes.INITIAL);
                  // debugPrint('toquei no drawer10');
                }),
          ],
        ));
  }
}