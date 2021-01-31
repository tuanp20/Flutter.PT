

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:listview_data/table.dart';

List<table> getDataTable(String response){
  var list = json.decode(response) as List<dynamic>;
  List<table> tables = list.map((model) => table.fromJson(model)).toList();
  return tables;
}

Future<List<table>> fetchTable() async {
  var linkApi = 'https://jsonplaceholder.typicode.com/posts';
  final response = await http.get(linkApi);
  if(response.statusCode == 200){
    return compute(getDataTable, response.body);
  }else{
    throw Exception('Error');
  }
}