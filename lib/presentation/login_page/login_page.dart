import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quien_me_debe/presentation/home_page/home_page.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: Get.height * .05, right: 40, left: 40, bottom: 40),
            child: Column(
              children: [
                Image.asset('assets/login1.png', height: Get.height * .35),
                const Text(
                  '¿QUIEN ME DEBE?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: Get.height * .05),
                TextField(
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    cursorColor: Colors.white,
                    controller: loginController.userController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.people, color: Colors.white),
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      labelText: "Usuario",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    )),
                SizedBox(height: Get.height * .03),
                TextField(
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    cursorColor: Colors.white,
                    controller: loginController.passwordController,
                    decoration: InputDecoration(
                      suffixIcon:
                          const Icon(Icons.password, color: Colors.white),
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      labelText: "Contraseña",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    var login = loginController.login();
                    if (login) {
                      Get.offAll(() => HomePage());
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Error'),
                          content: const Text('Verifique los datos ingresados'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Get.back(),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Container(
                    height: 45,
                    width: Get.width * .45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Ingresar',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
