

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CounterController extends GetxController{

  //* In Getx we use Rx before declaring data type
  //* user .obs to make that value observable.
  RxInt counter = 1.obs;


  incrementCounet(){
    counter.value++;

  }


}