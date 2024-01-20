

import 'package:flutter/material.dart';
import 'package:tester/country.dart';
import 'package:tester/countryservices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Example>? examples;
  bool isLoaded  = false;

  @override
  void initState() {
    super.initState();
    loadCountries();
  }
  Future<void> loadCountries() async{
    final exampleservice = exampleServices();
    examples  = await exampleservice.getallExamples();
    setState(() {
      isLoaded = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoaded && examples != null?SafeArea(child: Column(children: [
            SizedBox(height: 30,),
            Expanded(child: SingleChildScrollView(

              child: Padding(padding: EdgeInsets.all(8),child: Column
              (children: examples!.map((ex) => Column(
                children: [
                  const SizedBox(height:4),
                  Row(
                    children: [
                      Expanded(child: Text(ex.body??'No name')),
                    ],
                  )
                ],
              )
              ).toList()
              
              ),),
            )
            )
      ],)):CircularProgressIndicator()
    );
  }
}
 