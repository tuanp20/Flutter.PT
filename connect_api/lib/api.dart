
import 'dart:convert';

import 'album.dart';

List<Album> getAlbum(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  List<Album> albums = list.map((model) => Album.fromJson(model)).toList();
}

// Future<List<Album>> fetchAlbum() async{
//   final response = await http.get('https://jsonplaceholder.typicode.com/posts');
//   if(response.stateCode == 200){
//     return compute(getAlbum, response.body)
//   }else{
//     throw Exception('Erroe');
//   }
// }