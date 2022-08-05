import 'dart:convert';

import 'package:getx_learn/model/place_holder_model.dart';
import 'package:http/http.dart' as http;
class PlaceHolderService{
  final _baseUrl = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
  Future<PlaceHolderModel> generateDetail() async {
    var response= await http.get(_baseUrl);
    final responseBody=response.body;
    final Map<String,dynamic> decodeBody=jsonDecode(responseBody);

    final result=PlaceHolderModel.fromJson(decodeBody);
    if (response.statusCode==200) {
      return result;
    }else{
      throw Exception("Gelen verilerde sorun var ${response.statusCode}");
    }
  }
}