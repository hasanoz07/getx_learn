import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/utils/routes.dart';

class GetxApp extends StatelessWidget {
  const GetxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Getx Example Demo",
      theme: ThemeData.dark(),
      initialRoute: "/",
      getPages: routes
    );
  }
}