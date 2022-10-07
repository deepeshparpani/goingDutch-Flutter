import 'package:flutter/material.dart';
import 'package:myapp/main1.dart';
import 'package:myapp/reg.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // ignore: library_private_types_in_public_api
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'goingDutch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const MyStatefulWidget()
      );
  }
}



