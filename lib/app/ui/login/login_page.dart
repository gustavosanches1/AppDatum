import 'package:app/app/routes/app_routes.dart';
import 'package:app/app/ui/widgets/buttons/botao_primario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';



class LoginPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover)),
            ),
            //header
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Bem vindo',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: 290,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20),
                            )),
                        //inputwrapper
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  //input field
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: ListTile(
                                          title: Text(
                                            'Bem-vindo ao PDVMobile',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Insira suas credencias abaixo para acessar o aplicativo.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),

                                      ),
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        child: Text('Seu usuário',
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        child: Text('Sua senha',
                                        ),
                                      ),
                                    ],
                                  ),
                                  //fim input field
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Esqueceu sua Senha ? Recupere aqui!',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 48,
                                ),
                                AppBotaoPrimario(
                                  child: Text('ENTRAR'),
                                  onPressed: (){
                                    Get.offNamed(Routes.HOME);
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) => Loading(),
                                    //   ),
                                    // );
                                  }, width: 2,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        //fim inputwrapper
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //fim header
          ],
        ),
      ),
    );
  }
}

//         body: Center(
//           child: Container(
//               alignment: Alignment.center,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.all(8.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           hintText: "Enter Username"
//                       ),
//                     ),
//                   ),
//
//                   Container(
//                     margin: EdgeInsets.all(8.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           hintText: "Enter Password"
//                       ),
//                     ),
//                   ),
//
//                   MaterialButton(
//                     onPressed: () {},
//                     child: Text("Login", style: TextStyle(color: Colors.white)),
//                     color: Colors.blueAccent,
//                   )
//                 ],
//               )
//           ),
//         )
//     );
//   }
