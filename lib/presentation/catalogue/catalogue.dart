import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quien_me_debe/presentation/catalogue/catologue_controller.dart';
import 'package:quien_me_debe/widgets/product_card.dart';

class CataloguePAge extends StatelessWidget {
  CataloguePAge({super.key});
  final CatalogueController catalogueController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Catalogo'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: .85),
        itemCount: catalogueController.itemsList.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(itemModel: catalogueController.itemsList[index]);
        },
      ),
    );
  }
}
