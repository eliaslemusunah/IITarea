// ignore_for_file: file_names

import 'package:flutter/material.dart';



// ignore: camel_case_types
class InformacionPersonal extends StatelessWidget {
  const InformacionPersonal({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Información Personal',
      home: Scaffold(
        appBar: AppBar( 
          title: const Text('Información Personal'),
        ),
        body: const Center(
          child: Text('Información Personal'),
        ),
      ),
    );
  }
}