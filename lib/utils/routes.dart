import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_learn/bindings/place_holder_bindig.dart';
import 'package:getx_learn/getx_app.dart';
import 'package:getx_learn/view/place_holder_details.dart';

List<GetPage<dynamic>> routes=[
  GetPage(name: "/", page: ()=> const PlaceholderDetail(),binding:PlaceholderBinding())
];
