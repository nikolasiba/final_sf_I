import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:quien_me_debe/domain/interface/i_items.dart';
import 'package:quien_me_debe/domain/model/item_model.dart';

class ItemsRespository implements Iitems {
  @override
  Future<List<ItemModel>> getItems() async {
    var url = Uri.parse("https://fakestoreapi.com/products");
    try {
      var response = await http.get(
        url,
      );
      if (response.statusCode == 200) {
        final res = jsonDecode(response.body);
        List<ItemModel> aux =
            res.map<ItemModel>((json) => ItemModel.fromJson(json)).toList();
        return aux;
      }
    } catch (e) {
      rethrow;
    }
    return [];
  }
}
