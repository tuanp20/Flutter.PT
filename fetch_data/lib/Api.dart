import 'package:flutter/foundation.dart';
import 'product.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fetch_data/product.dart';

  List<Product> getAllProduct(String responseBody){
    var list = json.decode(responseBody) as List<dynamic>;
    List<Product> products = list.map((model) => Product.fromJson(model)).toList();
    return products;
  }

  Future<List<Product>> fetchProduct() async {
    final response = await http.get('http://attp.ungdungtructuyen.vn/api/NhacViec/GetNhacViec?userid=1fa9d30b-9732-4132-a04a-83d35abd504e&donviid=28562971-1165-41a2-9192-9814d5d7baf');
    if(response.statusCode == 200){
      return compute(getAllProduct, response.body);
    }else{
      throw Exception("Request API Error");
    }
  }
