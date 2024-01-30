import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quien_me_debe/presentation/catalogue/catalogue.dart';
import 'package:quien_me_debe/presentation/catalogue/catologue_controller.dart';
import 'package:quien_me_debe/presentation/create_request/create_request.dart';
import 'package:quien_me_debe/presentation/delete_request/delete_request.dart';
import 'package:quien_me_debe/presentation/home_page/home_controller.dart';
import 'package:quien_me_debe/presentation/update_request/update_request.dart';
import 'package:quien_me_debe/presentation/verify_citizen/verify_citizen.dart';
import 'package:quien_me_debe/widgets/custom_buttom.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController homeController = Get.put(HomeController());
  final CatalogueController catalogueController =
      Get.put(CatalogueController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue[900],
            shadowColor: Colors.blue[900],
            title: const Text('QUIEN ME DEBE ?'),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: Get.height * .1),
                  CustomButton(
                      height: Get.height * .07,
                      width: Get.width * .4,
                      onPressed: () async {
                        await catalogueController.getItems();
                        Get.to(() => CataloguePAge());
                      },
                      text: 'Catalogo',
                      backgroundColor: Colors.blue[900]!),
                  SizedBox(height: Get.height * .01),
                  CustomButton(
                      height: Get.height * .07,
                      width: Get.width * .4,
                      onPressed: () => Get.to(() => VerifyCitizen()),
                      text: 'Verificar ciudadano',
                      backgroundColor: Colors.blue[900]!),
                  SizedBox(height: Get.height * .01),
                  CustomButton(
                      height: Get.height * .07,
                      width: Get.width * .4,
                      onPressed: () => Get.to(() => CreateRequest()),
                      text: 'Crear solicitud',
                      backgroundColor: Colors.blue[900]!),
                  SizedBox(height: Get.height * .01),
                  CustomButton(
                      height: Get.height * .07,
                      width: Get.width * .4,
                      onPressed: () => Get.to(() => UpdateRequest()),
                      text: 'Actualizar solicitud',
                      backgroundColor: Colors.blue[900]!),
                  SizedBox(height: Get.height * .01),
                  CustomButton(
                      height: Get.height * .07,
                      width: Get.width * .4,
                      onPressed: () => Get.to(() => DeleteRequest()),
                      text: 'Eliminar solicitud',
                      backgroundColor: Colors.blue[900]!),
                ],
              ),
            ),
          ),
        ));
  }
}





// Seria catalogo de objetos
// Registro de usuarios
// sistema de busqueda
// fecha
//