import 'package:flutter/material.dart';
import 'package:getx_learn/controller/place_holder_controller.dart';

class SuccesWidget extends StatelessWidget {
  const SuccesWidget({Key? key, required this.controller}) : super(key: key);
  final PlaceHolderController controller;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(" ${controller.holderModel.title.toString()}"),subtitle: Text("${controller.holderModel.body}"),leading: CircleAvatar(child: Text("${controller.holderModel.id}")),),
    );
  }
}
