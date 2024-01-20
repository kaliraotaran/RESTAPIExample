

import 'package:tester/country.dart';
import 'package:tester/country_api.dart';

// class CountryServices{
//   final _api = CountryApi();
//   Future<List<Country>?> getAllCountries() async{
//      return _api.getAllCountries();
//   }
// }

class exampleServices{
  final _api = ExampleApi();
  Future<List<Example>?> getallExamples() async{
    return _api.getallExamples();
  }
}