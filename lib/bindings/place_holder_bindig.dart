import 'package:get/get.dart';
import 'package:getx_learn/controller/place_holder_controller.dart';
import 'package:getx_learn/service/place_holder_service.dart';

class PlaceholderBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<PlaceHolderService>(PlaceHolderService());
    Get.lazyPut(() => PlaceHolderController());
  }

}