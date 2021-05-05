import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          color: Colors.orange,
        ),
        Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      'https://blog.unitips.mx/hs-fs/hubfs/Carreras-del-futuro-en-M%C3%A9xico.png?width=900&name=Carreras-del-futuro-en-M%C3%A9xico.png',
                      width: 250.0,
                      height: 300.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      alignment: Alignment.center,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        onPressed: () => Get.toNamed("/registration"),
                        padding: EdgeInsets.all(30),
                        color: Colors.orangeAccent,
                        child: Text('Registrarse',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      alignment: Alignment.center,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        onPressed: () => Get.toNamed("/loginpage"),
                        padding: EdgeInsets.all(30),
                        color: Colors.orangeAccent,
                        child: Text('Iniciar sesion',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
/*
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Firebase - Email - Google",
          style:TextStyle(fontSize: 12),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(
            height:100,
          ),
          Container(
            child: SignInButtonBuilder(
              icon: Icons.person_add,
              backgroundColor: Colors.blueAccent,
              text: 'Registro',
              onPressed: ()=> Get.toNamed("/registration"),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
          Container(
            child: SignInButtonBuilder(
              icon: Icons.verified_user,
              backgroundColor: Colors.orange,
              text: 'Iniciar Sesion',
              onPressed: ()=> Get.toNamed("/loginpage"),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
  */
