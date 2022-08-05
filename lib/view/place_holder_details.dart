import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controller/place_holder_controller.dart';
import 'package:getx_learn/view/loading.dart';
import 'package:getx_learn/view/succes.dart';

class PlaceholderDetail extends StatelessWidget {
  const PlaceholderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller=Get.find<PlaceHolderController>();
    return Scaffold(appBar: AppBar(title: Text("Getx Learn App"),
    ),body: Obx(() => _controller.isLoading.isTrue?LoadingWidget(text:"Lütfen Bekleyiniz"):SuccesWidget(controller:_controller)),
    );
  }
}
