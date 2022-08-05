import 'package:get/get.dart';
import 'package:getx_learn/model/place_holder_model.dart';
import 'package:getx_learn/service/place_holder_service.dart';
import 'package:http/http.dart';

class PlaceHolderController extends GetxController{
  late PlaceHolderService _holderService;
late PlaceHolderModel holderModel;
PlaceHolderController(){
  _holderService=Get.find<PlaceHolderService>();
  getResponse();

}
RxBool isLoading=false.obs;
Future<void> getResponse() async {
  showLoading();
  holderModel=await _holderService.generateDetail();
  hideLoading();
}

void showLoading()=>  isLoading.toggle();
void hideLoading()=>  isLoading.toggle();





}