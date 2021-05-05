import 'package:firebase/controllers/register_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterLoginPage extends StatelessWidget {
  final controller = Get.put(LoginRegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: GetBuilder<LoginRegisterController>(
        builder: (_) {
          return SingleChildScrollView(
            child: Form(
                key: controller.formKey,
                child: Card(
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Image.network(
                          'https://blog.unitips.mx/hs-fs/hubfs/Carreras-del-futuro-en-M%C3%A9xico.png?width=900&name=Carreras-del-futuro-en-M%C3%A9xico.png',
                          width: 350.0,
                          height: 350.0,
                          alignment: Alignment.center,
                        ),
                        TextFormField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                            hintText: 'Ingrese el correo',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Ingrese texto';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 28.0),
                        TextFormField(
                          controller: controller.passwordController,
                          decoration: InputDecoration(
                            hintText: 'Ingrese la Contraseña',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Ingrese texto';
                            }
                            return null;
                          },
                          obscureText: true,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          alignment: Alignment.center,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            onPressed: () async {
                              _.register();
                            },
                            padding: EdgeInsets.all(12),
                            color: Colors.orangeAccent,
                            child: Text('Registrarse',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(controller.success == null
                              ? ''
                              : (controller.success
                                  ? 'Registro exitoso' + controller.userEmail
                                  : 'Registro fallido')),
                        ),
                      ],
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}

/*
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginRegisterController>(
        builder: (_){
          return Form(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(labelText:'Email'),
                      validator: (String value){
                        if(value.isEmpty) {
                          return 'Ingrese texto';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: controller.passwordController,
                      decoration: const InputDecoration(labelText:'Password'),
                      validator: (String value){
                        if(value.isEmpty) {
                          return 'Ingrese texto';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      alignment: Alignment.center,
                      child: RaisedButton(
                        child: Text('Register'),
                        onPressed: () async {
                          _.register();
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(controller.success == null
                      ? ''
                      : (controller.success
                      ? 'Registro exitoso' +
                      controller.userEmail
                      : 'Registro fallido')),
                    ),
                  ],
                ),
              )
            ),
          );
        },
      ),
    );
  }
*/
