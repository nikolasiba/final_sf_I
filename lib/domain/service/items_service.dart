import 'package:quien_me_debe/domain/interface/i_items.dart';
import 'package:quien_me_debe/domain/model/item_model.dart';

class ITemService {
  final Iitems iItems;

  ITemService(this.iItems);

  Future<List<ItemModel>> getItems() {
    return iItems.getItems();
  }
}
