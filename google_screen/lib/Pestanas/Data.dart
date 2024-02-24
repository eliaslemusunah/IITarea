// ignore_for_file: file_names

import 'package:flutter/material.dart';



// ignore: camel_case_types
class Data extends StatelessWidget {
  const Data({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Datos y Privacidad',
      home: Scaffold(
        appBar: AppBar( 
          title: const Text('Datos y Privacidad'),
        ),
        body: const Center(
          child: Text('Datos y Privacidad'),
        ),
      ),
    );
  }
}