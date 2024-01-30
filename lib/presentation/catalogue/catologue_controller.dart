import 'package:get/get.dart';
import 'package:quien_me_debe/domain/model/item_model.dart';
import 'package:quien_me_debe/domain/service/items_service.dart';
import 'package:quien_me_debe/infraestructure/items_repository.dart';

class CatalogueController extends GetxController {
  ITemService iTemService = ITemService(ItemsRespository());

  RxList<ItemModel> itemsList = <ItemModel>[].obs;

  Future<List<ItemModel>> getItems() async {
    return itemsList.value = await iTemService.getItems();
  }
}
