import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quien_me_debe/domain/model/item_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.itemModel});

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.network(
                  itemModel.image!,
                  height: Get.height * .125,
                ),
                SizedBox(height: Get.height * .010),
                AutoSizeText(
                  maxLines: 2,
                  itemModel.title!,
                  style: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * .010),
                AutoSizeText(
                  maxLines: 1,
                  'Precio: ${itemModel.price}',
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
                AutoSizeText(
                  'Calificacion: ${itemModel.rating!.rate}',
                  style: const TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.bold),
                ),
                AutoSizeText('id: ${itemModel.id}')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
