import 'package:app/app/ui/widgets/appbar/basico_app_bar.dart';
import 'package:app/app/ui/widgets/menu/menu_drawer.dart';
import 'package:app/app/ui/widgets/theme/tema_basico.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaginaBasica extends GetView {
  final Widget body;

  PaginaBasica(this.body);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;
    return Scaffold(
      appBar: BasicoAppBar(),
      drawer: DrawerMenu(),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: TemaBasico.corPrimaria,
        onTap: (value) async {
          switch (value) {
            case 0:
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Atenção',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Deseja atualizar carga?',
                              textAlign: TextAlign.center,
                              style: TextStyle(),
                            ),
                          )
                        ],
                      ),
                      actions: [
                        TextButton(
                          child: const Text('Sim'),
                          onPressed: () async {
                            // try {
                            //   await controller.atualizarBanco(
                            //       DialogDownload(context),
                            //       forcar: true);
                            // } catch (e) {
                            //   gravarLogErro(e, Trace.current(),
                            //       exibirMensagem: true);
                            // }
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: const Text('Não'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  }
              );
              Navigator.pop(context);
              break;
            case 2:
              // Get.to(ConfiguracaoPage());
              break;
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Atualizar Carga',
            backgroundColor: TemaBasico.corPrimaria,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Comanda',
            backgroundColor: TemaBasico.corPrimaria,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
            backgroundColor: TemaBasico.corPrimaria,
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}