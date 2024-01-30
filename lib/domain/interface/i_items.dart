import 'package:quien_me_debe/domain/model/item_model.dart';

abstract class Iitems {
  Future<List<ItemModel>> getItems();
}
