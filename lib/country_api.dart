import 'dart:convert';

import 'package:tester/country.dart';
import 'package:http/http.dart' as http;


// class CountryApi{
//   Future<List> getAllCountries() async{
//     var client = http.Client();
//     var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//     var response  = await client.get(uri);
//     if(response.statusCode ==200){
//       return exampleFromJson( const Utf8Decoder().convert(response.bodyBytes ));
//     }
//     return null;
  
//   }
// }

class ExampleApi{
  Future<List<Example>?> getallExamples()async{
    var client = http.Client();
    var uri  = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if(response.statusCode ==200){
      return exampleFromJson(const Utf8Decoder().convert(response.bodyBytes));
    }
    return null;
  }
}