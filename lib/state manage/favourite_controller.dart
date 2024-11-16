import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class FavouriteController extends GetxController {
  RxList<String> fruits =
      ['Apple', 'Orange', 'Banana', 'Pineapple', 'Jack-fruit'].obs;

  RxList<dynamic> _tempFruitList = [].obs;

  RxList get getSelectedList => _tempFruitList;

  setToList(dynamic value) {
    _tempFruitList.add(value);
  }

  removeFromList(dynamic value) {
    _tempFruitList.remove(value);
  }
}
